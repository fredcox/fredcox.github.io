---
title: Instalação do Docker no Arch Linux
published: true

image: /assets/banners/banner-docker-black.png

---

![banner-plex](/assets/banners/banner-docker.png)


# Atualizando o Sistema

Certifique de que o sistema esteja atualizado, para isso, execute o seguinte comando:

```shell
$ sudo pacman -Syu
```

# Habilite e Carregue o Módulo loop

```shell
$ sudo tee /etc/modules-load.d/loop.conf <<< "loop"
$ modprobe loop
```

# Instale o Docker 

```shell
$ sudo pacman -S docker
```


# Habilitando e Iniciando o Serviço

```shell
$ sudo systemctl start docker.service
$ sudo systemctl enable docker.service 
```

# Verificando o Processo


```shell
$ sudo docker info
```

# Criando o Grupo docker

```shell
$ sudo groupadd docker
```

# Adicionando o Usuário ao Grupo docker

```shell
$ sudo usermod -aG docker <username>
```







