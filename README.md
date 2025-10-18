# Docker

### Comandos

1. Como é a estrutura de comando o docker

**docker run [OPTIONS] IMAGE [COMMAND] [ARG...]**

2. Como rodar um docker: docker run $nome-da-imagem, no caso do exemplo ele vai buscar no docker hub a imagem com nome da imagem, se existir no docker hub ele vai verificar se já está baixada localmente, se não estiver ele vai baixar e executar, se exister vai executar a imagem local

```shell
docker run hello-world
```

3. Verificar quais containers estão em execução
```shell
docker ps
docker container ls
```

4. Verificar todos os containers mesmo não estando em execução
```shell
docker ps -a
docker container ls -a
```

[Docker Hub]('https://hub.docker.com/')