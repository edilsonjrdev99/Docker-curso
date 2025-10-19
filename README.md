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

5. Como parar um container em execução
```shell
docker stop id-do-container
```

6. Como usar o exec: Docker exec permite executar comandos dentro do container, a syntaxe do comando é docker exec -it (de interativo), seu id e o comando, no caso para navegação dentro do linux usamos o bash
```shell
docker exec -it id-do-container bash
```

7. Como pausar um container, nesse caso quando tentarmos executar o container não vai funcionar porque ele está pausado, mas ele ainda vai estar no docker ps
```shell
docker pause id-do-container
```

8. Como despausar um container
```shell
docker unpause id-do-container
```

9. Como remover um container: Se não existir persistência os itens do container não serão salvos
```shell
docker rm id-do-container
```

10. Como ver as imagens baixadas
```shell
docker images
```

11. Como verificar o mapeamento de porta
```shell
docker port id-do-container
```

12. Como verificar o conteúdo de uma imagem e suas camadas
```shell
docker inspect id-da-imagem
docker history id-da-imagem
```

### Flags

1. -it interativo, utilizado para acessar terminal do container com o bash
2. -d permite não travar o terminal quando rodar ou executar o docker
3. --force força a execução de algo
4. -P criar um mapeamento da porta automático
5. -p permite criar o mapeamento de porta específico onde o que vem antes dos : é a porta que você vai usar na url e depois a porta do container *8080:80*

### Importante

1. As camadas do container são cópias que não podem ser alteradas R/O (read only - apenas visualizar) após a criação, mas é criado uma camada temporária extra em cima das camadas como uma pilha, ela é R/W (read write - visualizar e editar) e armazena todas as alterações do container, por exemplo quando excluímos um arquivo, ele apenas deixa esse arquivo R/O como invisível, ele não é mais exibido, mas ainda continua na camada, quando alteramos um arquivo, ele mantém o arquivo R/O e adiciona as diferenças do arquivo na cama R/W

[Docker Hub]('https://hub.docker.com/')