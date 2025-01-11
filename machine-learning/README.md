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
## Setup Instructions

To set up the project, follow these steps:

1. Clone the repository:
    ```sh
    git clone <repository-url>
    cd <repository-directory>
    ```

2. Run the setup script:
    ```sh
    bash start_project.sh
    ```

This script will:
- Initialize the project with `uv`.
- Add `dynaconf` for configuration management.
- Create and activate a virtual environment.
- Create necessary directories ([config](http://_vscodecontentref_/6), [notebooks](http://_vscodecontentref_/7), [scripts](http://_vscodecontentref_/8), [database](http://_vscodecontentref_/9)).
- Install `MLFlow` and `DuckDB`.

## Dependencies

The project dependencies are listed in the [pyproject.toml](http://_vscodecontentref_/10) file:
```toml
[project]
name = "machine-learning"
version = "0.1.0"
description = "Add your description here"
readme = "README.md"
requires-python = ">=3.12"
dependencies = [
    "duckdb>=1.1.3",
    "dynaconf>=3.2.6",
    "mlflow>=2.19.0",
]