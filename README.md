# MySQL + Drizzle Gateway

This repository features a simple setup for hosting MySQL in front of a Drizzle Gateway proxy for local development.

## Prerequisites

The following tools are required to run this setup:

- [Docker](https://docs.docker.com/get-started/get-docker/) (with Docker Compose)
- [Just](https://just.systems/man/en/packages.html) (optional, but recommended)

## Working with Docker Compose

When using the `just` task runner, you may use the following commands to start and stop the services.

```shell
# Starts MySQL in the background, proxied behind the Drizzle Gateway UI.
# Alias: `docker compose up --wait`
just start
```

```shell
# Stops all of the containers and cleans up resources.
# Recommended to always run when you're done working.
# Alias: `docker compose down --remove-orphans`
just stop
```

## Accessing Drizzle Gateway

The setup exposes the Drizzle Gateway UI on `http://localhost:4983`. Visit that in your web browser to access the app. (This is effectively what replaces the buggy MySQL Workbench.)

1. Select "Add database connection".
1. Select "MySQL" among the supported databases.
1. Select the "Connection URL" mode and use preconfigured `${MYSQL_URL}` as the provided value.

<details>
<summary>

### Screenshots

</summary>

!["Add database connection" screenshot](./docs/1-home.png)
!["MySQL" database type screenshot](./docs/2-mysql.png)
!["Connection URL" mode screenshot](./docs/3-connection-url.png)

</details>
