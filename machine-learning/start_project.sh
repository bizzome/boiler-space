uv init
uv add dynaconf
source .venv/bin/activate
mkdir config
cd config
dynaconf init
cd ..
mkdir notebooks
mkdir scripts
uv add mlflow duckdb
mkdir database
