# Machine Learning Project

This repository contains the setup for a machine learning project using `dynaconf`, `MLFlow`, and `DuckDB`.

## Project Structure
```bash
machine-learning/ 
├── .venv/ 
├── config/ 
├── database/ 
├── notebooks/ 
├── scripts/ 
├── .python-version
├── pyproject.toml 
├── start_project.sh
├── README.md 
└── uv.lock
```
Instruções de Configuração
Para configurar o projeto, siga estes passos:

1. Clone o repositório:

2. Execute o script de configuração:
`bash start_project.sh`

Este script irá:

- Inicializar o projeto com uv.
- Adicionar dynaconf para gerenciamento de configuração.
- Criar e ativar um ambiente virtual.
- Criar os diretórios necessários (config, notebooks, scripts, database).
- Instalar MLFlow e DuckDB.


## Funcionalidades do Projeto
1. Configuração com Dynaconf
O projeto utiliza dynaconf para gerenciamento de configuração, permitindo a separação de configurações sensíveis e específicas do ambiente. As configurações estão localizadas no diretório config.

2. Rastreamento de Experimentos com MLFlow

O MLFlow é utilizado para rastrear experimentos de machine learning. O servidor de rastreamento do MLFlow é configurado para usar um banco de dados PostgreSQL como backend e o MinIO como armazenamento de artefatos. O servidor pode ser iniciado com o comando:

3. Banco de Dados PostgreSQL
O projeto utiliza um banco de dados PostgreSQL para armazenar os metadados dos experimentos do MLFlow. A configuração do banco de dados está no arquivo compose.yml.

4. Armazenamento de Artefatos com MinIO
O MinIO é utilizado como armazenamento de artefatos para o MLFlow. Ele é configurado para rodar em um contêiner Docker e pode ser acessado através da URL configurada no arquivo compose.yml.

5. Scripts de Inicialização
O script start_project.sh é utilizado para configurar e iniciar o ambiente do projeto. Ele cria os diretórios necessários, ativa o ambiente virtual, instala as dependências e inicia o servidor do MLFlow.

6. Dependências do Projeto
As dependências do projeto estão listadas no arquivo pyproject.toml. Elas incluem bibliotecas como boto3, duckdb, dynaconf, ipykernel, mlflow, pandas, psycopg2-binary e scikit-learn.

7. Notebooks de Experimentos
O diretório notebooks contém notebooks Jupyter para experimentos de machine learning. Esses notebooks podem ser utilizados para desenvolver e testar modelos de machine learning.

8. Docker Compose
O arquivo compose.yml define a configuração dos serviços Docker necessários para o projeto, incluindo o banco de dados PostgreSQL, o MinIO e o servidor de rastreamento do MLFlow.

Instruções de Uso
Para iniciar os serviços Docker, execute o comando:
`docker-compose up -d`

Isso iniciará os contêineres do PostgreSQL, MinIO e MLFlow.
