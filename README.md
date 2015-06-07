# redis-commander

Redis management tool

## Build

```sh
$ docker build -t abdullah/redis-commander .
```

## Run

```sh
$ docker run --link redis:redis -p 8081:8081 -d abdullah/redis-commander
```

`redis-commander` automatically works when the Redis docker container is linked as `redis` since it uses the `$REDIS_PORT_6379_TCP_ADDR` environment variable.