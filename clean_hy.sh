# BE [20/01/2025]
python3 data-tools/script/border_extraction.py -c conf.json -T hy -d 1000 be '#'
python3 data-cleaner/script/clean.py -c conf.json -d 5 -T hy be
python3 data-tools/script/integration.py -c conf.json -T hy -s 10

# CH [30/01/2025]
python3 data-tools/script/border_extraction.py -c conf_v6.json -T hy -d 1000 ch '#'
python3 data-cleaner/script/clean.py -c conf.json -d 5 -T hy ch
python3 data-tools/script/integration.py -c conf_v6.json -T hy -s 10

# FR [06/02/2025]
python3 data-tools/script/border_extraction.py -c conf_v6.json -T hy -b false -B international -d 3000 fr
python3 data-tools/script/border_extraction.py -c conf_v6.json -T hy -b ad -d 3000 -n fr
python3 data-tools/script/border_extraction.py -c conf_v6.json -T hy -b mc -d 3000 -n fr
python3 data-tools/script/border_extraction.py -c conf_v6.json -T hy -b lu -d 3000 -n fr
python3 data-tools/script/border_extraction.py -c conf_v6.json -T hy -b it -d 3000 -n fr
python3 data-tools/script/border_extraction.py -c conf_v6.json -T hy -b es -d 3000 -n fr
python3 data-tools/script/border_extraction.py -c conf_v6.json -T hy -b ch -d 3000 -n fr
python3 data-tools/script/border_extraction.py -c conf_v6.json -T hy -b de -d 3000 -n fr
python3 data-tools/script/border_extraction.py -c conf_v6.json -T hy -b be -d 3000 -n fr
python3 data-cleaner/script/clean.py -c conf.json -d 30 -T hy fr
python3 data-tools/script/integration.py -c conf.json -T hy -s 10


# NL [20/01/2025]
python3 data-tools/script/border_extraction.py -c conf.json -T hy -d 1000 nl '#'
python3 data-cleaner/script/clean.py -c conf.json -d 5 -T hy nl
python3 data-tools/script/integration.py -c conf.json -T hy -s 10