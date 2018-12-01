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

## Flyway

Migrations is done using flyway and plain SQL.

## Docker

To build a new project file.

```
docker build -f Dockerfile -t [repo/]containername[:versiontag] [more options] path | url
```

```
docker run [options] [repo/]containerimage[:tag\digest] [command to run]
```

### Docker Commands
|Command| Description
|- |:----
| docker pull \<images> | Pull an image|
| docker images | Show all images
| docker build -t \<name> | Build an image and tag it
| docker run \<name> | 
| docker run -it \<name> | Run an interctive box
| docker run -p 8888:80 \<name> | Run HOST:CONTAINER
| docker ps | Show all the current containers
| docker ps -a | Show all the containers
| docker rm \<id> | Remove docker container
| docker rm $(docker ps -a -q -f status=exited) | remove all containers with exit
| docker stop <id> | stop a detached image
| docker push \<name> | push repor into recognize registry


## Docker Compose Setup

### Re/Build the images first
docker-compose build

### Running just the volume
docker-compose start redis postgres

#### [ports](https://docs.docker.com/compose/compose-file/#ports)
Expose ports:

```
HOST:CONTAINER
```

### [expose](https://docs.docker.com/compose/compose-file/#expose)
Expose ports without publishing them tot he host machine - they'll only be accessible to linked services.