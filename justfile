set minimum-version := "1.56.0"

[unix]
set shell := ["sh", "-cu"]

[windows]
set shell := ["powershell.exe", "-NoLogo", "-NoProfile", "-Command"]

# Start MySQL and wait until it is healthy.
default:
    docker compose up --wait

# Start MySQL and Drizzle Gateway, then wait until they are healthy.
drizzle:
    docker compose --profile drizzle up --wait

# Start MySQL and MySQL Workbench, then wait until they are healthy.
workbench:
    docker compose --profile workbench up --wait

# Stop the Compose services and remove orphaned containers.
stop:
    docker compose --profile '*' down --remove-orphans
