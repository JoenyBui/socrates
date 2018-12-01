# README

## Pipenv

Install from Pipfile, if there is one:

```
pipenv install
```

or, add a pakcage to your new project:

```
pipenv install <package>
```

Active the Pipenv shell:

```
pipenv shell
python --version
```

## Docker Setup

## Running just the volume
docker-compose start redis postgres

#### [ports](https://docs.docker.com/compose/compose-file/#ports)
Expose ports:

```
HOST:CONTAINER
```

### [expose](https://docs.docker.com/compose/compose-file/#expose)
Expose ports without publishing them tot he host machine - they'll only be accessible to linked services.