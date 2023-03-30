import sys
from subprocess import call
import utils
import psycopg2


def getTableName(schema , tableName):
    return (schema+"." if schema else "") + tableName

def run(
    conf, theme, tables, countryCodes, verbose
):
    conn = psycopg2.connect(  user = conf['db']['user'],
                                    password = conf['db']['pwd'],
                                    host = conf['db']['host'],
                                    port = conf['db']['port'],
                                    database = conf['db']['name'])
    cursor = conn.cursor()

    print("CLEANING...", flush=True)

    for c in countryCodes:
        landmask_statement = "SELECT ST_Union(ARRAY(SELECT geom FROM "+ getTableName(conf['landmask']['schema'], conf['landmask']['table']) +" WHERE "+conf['landmask']["country_field"]+"='"+c+"'))"

        w_schema = conf['data']['themes'][theme]['w_schema']
        if not tables:
            tables = conf['data']['themes'][theme]['tables']

        for tb in tables:
            query = "DELETE FROM "+getTableName(w_schema, tb)
            query += " WHERE "+conf['data']["country_field"]+"='"+c+"'"
            query += " AND NOT ST_intersects(("+landmask_statement+"), geom)"

            print(u'query: {}'.format(query), flush=True)
            cursor.execute(query)
            conn.commit()

    cursor.close()
    conn.close()