set default-list
set minimum-version := "1.56.0"

[unix]
set shell := ["sh", "-cu"]

[windows]
set shell := ["powershell.exe", "-NoLogo", "-NoProfile", "-Command"]

start:
    docker compose up --wait

stop:
    docker compose down --remove-orphans
