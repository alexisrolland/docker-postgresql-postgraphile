# Docker-PostgreSQL-Postgraphile
Tutorial to build a **GraphQL API** using **Docker**, **PostgreSQL** and **Postgraphile**.
### [See Github Wiki](https://github.com/alexisrolland/docker-postgresql-postgraphile/wiki)

# Requirements
This project has been developed on **Linux Ubuntu 18.04 LTS**. It is using the following third party components:
* [Docker Community Edition for Ubuntu](https://www.docker.com/docker-ubuntu)
* [Docker Compose](https://docs.docker.com/compose/)
* [PostgreSQL Docker image](https://hub.docker.com/_/postgres/)
* [Postgraphile Docker image](https://hub.docker.com/r/graphile/postgraphile/)

# How To
To run the database and GraphQL API with the current data model, simply go to the project root and execute the following command:
```shell
$ cd docker-postgresql-postgraphile
$ docker-compose up
```
