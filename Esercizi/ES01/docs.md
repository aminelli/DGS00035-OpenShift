# Creazione container

```sh
docker build -t oc-admin:v1 --no-cache .
docker tag cnt-oc-admin:v1 aminelli/cli-oc:v1
docker push aminelli/cli-oc:v1
```

```sh
docker build -t oc-admin:v2 -f Dockerfile2 --no-cache .
docker tag cnt-oc-admin:v1 aminelli/cli-oc:v1
docker push aminelli/cli-oc:v1
```