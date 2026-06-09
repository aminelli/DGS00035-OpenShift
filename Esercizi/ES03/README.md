# Documentazione

## Compilazione

```sh
# build
docker build -t webapp-leo:v1.0 .

# Test
docker run -it --name test01 --hostname test01 -p 8080:8080 webapp-leo:v1.0




```