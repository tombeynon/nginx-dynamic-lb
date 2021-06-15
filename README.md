# Nginx Dynamic Load Balancer

An incredibly simple Nginx container with dynamic upstream hosts. Ultimately this allows you to configure a simple load balancer using only an environment variable.

Set `HOSTS` to a comma separated list of hosts you want to load balance traffic for.

See the included docker-compose.yml, or run with `docker`:

```
docker run -e HOSTS=google.com,yahoo.com:1234 -it ghcr.io/tombeynon/nginx-dynamic-lb
```

