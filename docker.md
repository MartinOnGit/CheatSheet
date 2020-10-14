# Docker commands

container override dns resolution :
```bash
docker run ... -add-host <fully.qualified.domain.name>:<ip>
```

## official image

ClickHouse db:
```bash
docker run -d --ulimit nofile=262144:262144 -p 8123:8123 -p 9000:9000 --volume=/tmp/ch:/var/lib/clickhouse --name local-ch yandex/clickhouse-server
```

Mongo db:
```bash
docker run -d -p 27017:27017 -v /tmp/mongo:/data/db --name local-mongo mongo
```

Mysql server:
```
docker run -d -p 3306:3306 -v /tmp/mysql:/var/lib/mysql --name local-mysql -e MYSQL_ROOT_PASSWORD=notroot mysql:latest
```
