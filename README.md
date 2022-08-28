# Python Poetry mono-repo

This is an example of how to organize a repo containing multiple independent services (`service1` and `service2`) and also a common library shared between the services (`common`).

Each module is placed under `src` in its own folder, with its own `pyprojct.toml` specifying dependencies. 
The services specify their dependence on the common library with a [path dependency](https://python-poetry.org/docs/dependency-specification/#path-dependencies).

## Local development
To allow ease of development, a `pyproject.toml` is placed at the root of the project, referencing all sub-modules as dependencies. This allows your editor to use one virtual environment for all the modules. 

Install locally with
```shell
poetry install
```
and run e.g.
```
poetry run python src/service1/service1/main.py
```

## Docker
Each service has its own Dockerfile (`service1.Dockerfile` & `service2.Dockerfile`) that can be used for easy deployment. 

Additionally, `docker-compose.yaml` is defining how to build and run both services. This allows easy testing of the Docker deployment, locally. 
Run both with `docker compose up`.
