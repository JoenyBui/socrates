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

### SQL-based migrations

Migrations are most commonly written in SQL. This makes it easy to get started and leverage any existing scripts, tools and skills. It gives you access to the full set of capabilities of your database and eliminates the need to understand any intermediate translation layer.

SQL-based migrations are typically used for

DDL changes (CREATE/ALTER/DROP statements for TABLES,VIEWS,TRIGGERS,SEQUENCES,…)
Simple reference data changes (CRUD in reference data tables)
Simple bulk data changes (CRUD in regular data tables)

#### Naming

In order to be picked up by Flyway, SQL migrations must comply with the following naming pattern:

```
  R__My_view.sql
  U1.1__Fix_indexes.sql
  U2__Add a new table.sql
  V1__Initial_version.sql
  V1.1__Fix_indexes.sql
  V2__Add a new table.sql
```
The format we are using is the YYYYMMDDHHMM__DESCREPTION.sql
The file name consists of the following parts:

* Prefix: V for versioned, U for undo, and R for repeatable migrations 
* Version: Version with dots or underscores separate as many parts as you like (Not for repeatable migrations)
* Separator: __ (two underscores) 
* Description: Underscores or spaces separate the words
* Suffix: .sql 


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