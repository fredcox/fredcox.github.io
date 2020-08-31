---
title: Crazy DiskMark - Um Utilitário de Benchmark em SSD para Linux
published: true

image: /assets/banners/banner-crazydiskmark-black.png

---

![banner-plex](/assets/banners/banner-crazydiskmark.png)


Nesse artigo iremos analisar e instalar o [Crazy DiskMark](https://pypi.org/project/crazydiskmark/), 
que é um utilitário desenvolvido para efetuar testes de **desempenho em discos do estado sólido - SSD**, e que
produz as mesmas saídas do [CrystalDiskMark](https://crystalmark.info/en/software/crystaldiskmark/), este último
 disponível apenas para [Windows](https://www.microsoft.com/pt-br/windows/).

[Crazy DiskMark](https://pypi.org/project/crazydiskmark/) é um front-end para o **[fio - Flexible I/O tester](https://fio.readthedocs.io/en/latest/fio_doc.html)**, 
que é uma aplicação para testes de **entrada/saída** estável, código aberto, precisa e disponível para Linux.

A motivação por trás do desenvolvimento do [Crazy DiskMark](https://pypi.org/project/crazydiskmark/) residiu no fato de
não haver um benchmark intuitivo, fácil, com interface gráfica semelhante ao [CrystalDiskMark](https://crystalmark.info/en/software/crystaldiskmark/). 


Enfim, não havia uma alternativa para Linux, então decidi desenvolvê-la.   

# Atenção

Este programa foi desenvolvido para utilização **somente em discos do estado sólido - SSD´s**. **Não** se deve utilizar
o [Crazy DiskMark](https://pypi.org/project/crazydiskmark/) em HD´s mecânicos.

Depois da instalação, execute [crazydiskmark](https://pypi.org/project/crazydiskmark/) no terminal e um lançador será
criado no menu principal de seu **desktop environment (kde, gnome,cinnamon, mate, etc).** A partir daí, você pode continuar 
executando a aplicação com apenas um click nesse lançador.

[Crazy DiskMark](https://pypi.org/project/crazydiskmark/) também está disponível para instalação em qualquer distribuições Linux
pelo **Python Package Manager - PIP**.

- **IMPORTANTE**: Coloque o caminho **$HOME/.local/bin** na sua variável de ambiente **$PATH**, para isso, edite o arquivo
$HOME/.bashrc e inclua a seguinte alteração:

```shell
export PATH=$PATH:$HOME/.local/bin
```

# Instalação no Arch Linux e Derivados

Se você trabalha com **[Arch Linux](https://www.archlinux.org/)** ou qualquer outra distro derivada, tal qual 
**[Manjaro](https://manjaro.org/)**, o pacote **crazydiskmark** está disponível para instalação pelo 
**[AUR](https://aur.archlinux.org/)** e você pode instalá-lo com o seguinte simples comando:
 
 ```shell
$ yay -S crazydiskmark
$ crazydiskmark 
```

# Instalação no Ubuntu e Derivados   

```shell
$ sudo apt update
$ sudo apt install fio python3-pip libxcb-xinerama0
$ pip3 install crazydiskmark
$ crazydiskmark
```

# Instalação no Fedora

```shell
$ sudo dnf update
$ sudo dnf install fio
$ pip3 install crazydiskmark --user
$ crazydiskmark
```

# Conclusão

Para efetuar benchmark em um disco específico, selecione o diretório onde a que corresponde à partição e ponto de montagem
do device. 

É isso, espero ter ajudado.

![banner-plex](/assets/banners/banner-crazydiskmark.png)  