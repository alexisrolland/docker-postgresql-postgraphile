# Docker-PostgreSQL-PostGraphile

Template to build a **GraphQL API** using **Docker**, **PostgreSQL** and **PostGraphile**.

This template includes in particular the following twists:

-   The PostGraphile plugin **connection filter** which allows to do advanced filtering on nodes lists.
-   A custom pluging which does nothing but print "Hello World!". This custom plugin can be used as an example to build a wrapper that allows to customize PostGraphile resolvers.

![Architecture](https://github.com/alexisrolland/docker-postgresql-postgraphile/blob/master/doc/architecture.png)

# Requirements

This project requires to have Docker and Docker Compose installed on your machine. To install them follow the steps described here: [Requirements](https://github.com/alexisrolland/docker-postgresql-postgraphile/wiki#requirements)

# Tutorial

To rebuild this project from scratch, follow the tutorial on the [Wiki](https://github.com/alexisrolland/docker-postgresql-postgraphile/wiki)

# Run

To run the project database and GraphQL API with the current data model, simply go to the project root and execute the following command:

```shell
$ cd docker-postgresql-postgraphile

# Build Docker images
$ docker-compose build

# Start Docker containers
$ docker-compose up
```

You can navigate to the following URL to access **GraphiQL**, the interactive documentation of your API:

-   Linux: `http://localhost:5433/graphiql`
-   Windows Pro: `http://localhost:5433/graphiql`
-   Windows Home: `http://<your_docker_ip>:5433/graphiql`, you can get `<your_docker_ip>` with the command `docker-machine ip`
