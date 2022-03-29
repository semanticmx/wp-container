## LHP infrastructure for WordPress website

### Install

This container includes latest WordPress, MySQL 5.7 and updated settings to allow up to 1GB uploads.

Just deploy as needed.

### Local setup

```bash
mkdir wp-theme
docker compose -f local.yml build
docker compose -f local.yml up
```

### Deploy to production

Rename `production.yml.tpl` to `production.yml` and adjust settings accordingly.

```bash
docker compose -f production.yml build
docker compose -f production.yml up
```

### Troubleshooting

1. Remove image

```bash
docker compose -f local.yml stop
docker compose -f local.yml down -v
```

Remove wordpress image from local docker

2. Clean up local containers

```bash
docker compose -f local.yml stop
docker compose -f local.yml down -v
docker system prune
docker volume prune
docker network prune
docker compose -f local.yml --verbose up --build --remove-orphans
```
