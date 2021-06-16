# Nginx Dynamic Load Balancer

An incredibly simple Nginx container with dynamic upstream hosts. Ultimately this allows you to configure a simple load balancer using only an environment variable.

Set `HOSTS` to a comma separated list of hosts you want to load balance traffic for.

Set `HOST` to the hostname you will serve the load balancer under.

See the included docker-compose.yml, or run with `docker`:

```
docker run -e HOSTS=google.com,yahoo.com:1234 -e HOST=mylbdomain.com -p 80:80 -it ghcr.io/tombeynon/nginx-dynamic-lb:v0.0.2
```

