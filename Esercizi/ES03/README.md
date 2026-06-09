# Documentazione

## Compilazione

```sh
# build
docker build -t webapp-leo:v1.0 .

# Test
docker run -it --rm --name test01 --hostname test01 -p 8080:8080 webapp-leo:v1.0

# Tag
docker tag webapp-leo:v1.0 aminelli/webapp-leo:v1.0

# docker hub 
docker push aminelli/webapp-leo:v1.0

```