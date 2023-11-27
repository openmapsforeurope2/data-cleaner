#!/bin/sh

cd ..
python3 data-tools/script/border_extraction.py -c conf.json -T tn -t road_link -d 1000 be '#'
python3 data-cleaner/script/clean.py -c conf.json -d 100 -T tn -t road_link_w be
python3 data-tools/script/integration.py -c conf.json -T tn -t road_link -s 10

python3 data-tools/script/border_extraction.py -c conf.json -T tn -t road_link -d 1000 fr '#'
python3 data-cleaner/script/clean.py -c conf.json -d 100 -T tn -t road_link_w fr
python3 data-tools/script/integration.py -c conf.json -T tn -t road_link -s 10

python3 data-tools/script/border_extraction.py -c conf.json -T tn -t road_link -d 1000 nl '#'
python3 data-cleaner/script/clean.py -c conf.json -d 100 -T tn -t road_link_w nl
python3 data-tools/script/integration.py -c conf.json -T tn -t road_link -s 10


python3 data-tools/script/border_extraction.py -c conf.json -T tn -t railway_link -d 1000 be '#'
python3 data-cleaner/script/clean.py -c conf.json -d 100 -T tn -t railway_link_w be
python3 data-tools/script/integration.py -c conf.json -T tn -t railway_link -s 10

python3 data-tools/script/border_extraction.py -c conf.json -T tn -t railway_link -d 1000 fr '#'
python3 data-cleaner/script/clean.py -c conf.json -d 100 -T tn -t railway_link_w fr
python3 data-tools/script/integration.py -c conf.json -T tn -t railway_link -s 10

python3 data-tools/script/border_extraction.py -c conf.json -T tn -t railway_link -d 1000 nl '#'
python3 data-cleaner/script/clean.py -c conf.json -d 100 -T tn -t railway_link_w nl
python3 data-tools/script/integration.py -c conf.json -T tn -t railway_link -s 10