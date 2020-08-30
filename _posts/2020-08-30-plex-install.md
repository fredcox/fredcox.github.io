---
title: Instalação do Plex-Media-Server no Arch Linux e Derivados
published: true
---

![My helpful screenshot](/assets/plex-install/banner-plex.png)

# Índice


# Introdução

Nesse artigo iremos instalar o [plex-media-server](https://www.plex.tv/pt-br/media-server-downloads/) no 
[Arch Linux](https://www.archlinux.org/). Vale ressaltar que o procedimento descrito nesse documento também é 
compatível com distribuições baseadas no [Arch Linux](https://www.archlinux.org/), tais como 
[Manjaro](https://manjaro.org/), [EndeavourOS](https://endeavouros.com/) e outras.


# Instalando o plex-media-server

1. Instale o pacote **plex-media-server** do [AUR](https://aur.archlinux.org/) com o seguinte comando:

```shell
$ yay -Syu
$ yay -S plex-media-server
```

2. Habilite o Serviço

```shell
$ sudo systemctl plexmediaserver
```

# Liberando as portas do Plex no Firewall - ufw

Crie o arquivo **/etc/ufw/applications.d/plexmediaserver** com o seguinte conteúdo:


```ini
[plexmediaserver]
title=Plex Media Server (Standard)
description=The Plex Media Server
ports=32400/tcp|3005/tcp|5353/udp|8324/tcp|32410:32414/udp

[plexmediaserver-dlna]
title=Plex Media Server (DLNA)
description=The Plex Media Server (additional DLNA capability only)
ports=1900/udp|32469/tcp

[plexmediaserver-all]
title=Plex Media Server (Standard + DLNA)
description=The Plex Media Server (with additional DLNA capability)
ports=32400/tcp|3005/tcp|5353/udp|8324/tcp|32410:32414/udp|1900/udp|32469/tcp
```

E entre com o seguintes comandos:

```shell
$ sudo ufw app update plexmediaserver
$ sudo ufw allow plexmediaserver-all
```


Aponte o seu browser para [http://localhost:32400/](http://localhost:32400/)

Pronto, está instalado. 


