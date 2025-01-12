uv init
uv add dynaconf
source .venv/bin/activate
mkdir config
cd config
dynaconf init
cd ..
mkdir notebooks
mkdir scripts
uv add mlflow duckdb pandas scikit-learn ipykernel psycopg2-binary boto3
mkdir database

export $(grep -v '^#' config/postgres.env | xargs)

mlflow ui --backend-store-uri "postgresql+psycopg2://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}"
#mlflow server --host 127.0.0.1 --port 8080