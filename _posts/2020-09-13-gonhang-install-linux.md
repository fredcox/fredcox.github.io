---
title: GonhaNG - Um Monitor de Sistema para Linux
published: true
tags:
- Arch Linux
- ubuntu
- Linux Mint
- fedora 
- github
- Manjaro
- EndeavourOS
- instalação

image: /assets/banners/banner-gonhang-black.png

---


![banner-plex](/assets/banners/banner-gonhang.png)

[GonhaNG](https://github.com/fredcox/gonhang) é um **monitor de sistema** leve, prático, fácil de configurar 
e intuitivo para **Linux**. 

Desenvolvido em [Python 3](https://www.python.org/) com [PyQt 5](https://pypi.org/project/PyQt5/), 
[GonhaNG](https://github.com/fredcox/gonhang) teve como motivação a disponibilização de um monitor de sistema 
para Linux que seja de rápida instalação e não necessite de escrita de parâmetros em arquivos 
de **configurações extras e intermináveis adaptações visuais**. Ele é fácil de instalar e a configuração 
é desempenhada através de uma interface gráfica do tipo **wizard**, onde tudo é realizado **on the fly**, 
ou seja, o usuário não precisa reinicializar o aplicativo para visualizar as alterações, as escolhas são 
atualizadas e mostradas pelo aplicativo em tempo real.      

Entretanto, há alguns aplicativos que trabalham em conjunto com o [GonhaNG](https://github.com/fredcox/gonhang), que
precisam ser configurados a parte, por exemplo:

- Para mostrar as previsões de tempo, é necessário efetuar um cadastro (é gratuito) no 
[Open Weather](https://openweathermap.org/) e obter uma chave api. 
- Para que as temperaturas dos dispositivos SSD e HDD sejam mostradas é necessário configurar 
o [hddtemp](https://wiki.archlinux.org/index.php/Hddtemp) como **daemon**. 


Atualmente o [GonhaNG](https://github.com/fredcox/gonhang) suporta as seguintes distros:

- **Arch Linux** e derivados **(Manjaro, ArcoLinux, Chakra, Velt/OS, Anarchy Linux e ArchBang)**
- **Ubuntu** e derivados **(Linux Mint, PopOS e MxLinux)**
- **Fedora32**


Veremos a seguir, neste artigo, como instalar e configurar o [GonhaNG](https://github.com/fredcox/gonhang) 
nas distros suportadas.



# Instalação

Escolha a sua distro nas seções seguintes e após instalar e executar o [GonhaNG](https://github.com/fredcox/gonhang), 
clique com o botão direito do mouse no ícone do [GonhaNG](https://github.com/fredcox/gonhang) e será mostrado o menu
principal. Nele você poderá modificar diversas características de configurações, tais como:

1. A posição que o [GonhaNG](https://github.com/fredcox/gonhang) será carregado na tela

![mainmenu](/assets/gonhang/mainmenu.png)

2. Acessar o wizard, através da opção **config** 

## Ubuntu e derivados

A instalação no ubuntu e derivados é simples, bastando apenas adicionar o PPA e instalar.

```shell
$ sudo add-apt-repository ppa:fredcox-p/gonhang
$ sudo apt update
$ sudo apt install gonhang
```

## Fedora

[GonhaNG](https://github.com/fredcox/gonhang) está disponível no [Fedora Copr](https://copr.fedorainfracloud.org/), portanto,
para instalar, entre com os seguintes comandos no terminal:

```shell
$ sudo dnf copr enable fredcox/gonhang
$ sudo dnf update
$ sudo dnf install gonhang
```

## Arch Linux e derivados

```shell
$ yay -S gonhang
```

# Mostrando as Previsões de Tempo

## Cadastro no Open Weather e Obtenção da Api Key

Conforme dito anteriormente, para mostrar as previsões de tempo, é necessário efetuar um cadastro (gratuito) no 
[Open Weather](https://openweathermap.org/) e obter uma **chave api**, para isso, acesse o site 
[https://openweathermap.org/](https://home.openweathermap.org/users/sign_up), preencha o cadastro e efetue login.

Após efetuar o login, clique no seu nome de usuário (canto direito da tela) e escolha a opção **"My API Keys"**.  

![apiopenweather.png](/assets/gonhang/apiopenweather.png)

Preencha o campo **"Create Key"** com o valor **"MinhaChaveApi"** e clique no botão **"Generate"**.

![minhachaveapi.png](/assets/gonhang/minhachaveapi.png)

Copie e guarde a sua chave API, você precisará dela logo em seguida. 

 
## Obtendo Coordenadas Geográficas

Acesse o site [https://www.latlong.net/](https://www.latlong.net/), digite o **nome** da sua cidade e pressione o botão
**"Find"**, por exemplo:

![latlonfind.png ](/assets/gonhang/latlonfind.png )

Copie e cole no [GonhaNG](https://github.com/fredcox/gonhang) os valores obtidos referentes à latitude e longitude.
Preencha também o campo **"Api Key"** com a sua chave Api obtida anteriormente no **Open Weather**. Depois de preencher o 
formulário com todas as informações, clique no **"botão Validate"**

![latlonfind.png ](/assets/gonhang/weather.png )

Se você digitou as informações corretamente, aparecerá uma mensagem de status avisando que o processo foi validado 
A partir deste momento já se pode observar que as informações climáticas estão sendo mostradas pelo 
[GonhaNG](https://github.com/fredcox/gonhang). 

 >Se ao final do processo deu erro 404, então você precisa digitar latitude, longitude e chave api corretamente, uma vez que,
colocando as informações erradas, é impossível de validar.
 
# hddtemp

![hddtemp](/assets/gonhang/hddtemp.png)

Se você já instalou o [GonhaNG](https://github.com/fredcox/gonhang), assim pressuponho, o **hddtemp** já está presente
no seu sistema, então, para que sejam mostradas as **leituras de temperaturas dos devices** conectados na(s) porta(s) 
**Sata** de seu sistema, é necessário que **hddtemp** esteja rodando em **background** como **daemon**. Nas seções seguintes, 
explicarei como deixar o **hddtemp** pronto para que essas **leituras** sejam mostradas pelo aplicativo em tempo real.   


## Habilitando hddtemp no Ubuntu e derivados

Para subir o **hddtemp** como daemon no **Ubuntu, Linux mint e derivados** é necessário editar o arquivo /etc/default/hddtemp e
modificar a linha _**RUN_DAEMON="false"**_ para _**RUN_DAEMON="true"**_ **(por volta da linha 8)** , ficando assim:

![hddtempdefault](/assets/gonhang/hddtempdefault.png)

Depois de editar e salvar o arquivo, reinicialize o seu sistema com o seguinte comando:

```shell
$ sudo reboot
```

Após reinicializar você pode ir no wizard, clica com o botão direito no menu principal, seleciona config e navega até
 a seção **Storages Temperatures**. Então é só você selecionar o dispositivo que a temperatura será mostrada no 
 [GonhaNG](https://github.com/fredcox/gonhang)
 
 
## Habilitando hddtemp no Fedora32, Arch Linux e derivados (Manjaro, ArcoLinux, etc)

Para subir o hddtemp como daemon no Fedora32 é só habilitar o serviço e iniciar, para isso, entre com os seguintes
comandos no terminal

```shell
$ sudo systemctl enable hddtemp
$ sudo systemctl start hddtemp
```

Após isso vá no **menu principal**, selecione **config** e navegue até a seção **Storages Temperatures**. Então é só você 
selecionar o dispositivo que a temperatura será mostrada no **painel disks** do [GonhaNG](https://github.com/fredcox/gonhang)


Pronto, espero ter ajudado. 