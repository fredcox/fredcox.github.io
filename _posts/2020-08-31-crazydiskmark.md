---
title: Crazy DiskMark - Um Utilitário de Benchmark em SSD para Linux
published: true

image: /assets/banners/banner-crazydiskmark-black.png

---

![banner-plex](/assets/banners/banner-crazydiskmark.png)


Nesse artigo iremos analisar e instalar o [Crazy DiskMark](https://github.com/fredcox/crazydiskmark/), 
que é um utilitário desenvolvido para efetuar testes de **desempenho em discos do estado sólido - SSD**, e que
produz as mesmas saídas do [CrystalDiskMark](https://crystalmark.info/en/software/crystaldiskmark/), este último
 disponível apenas para [Windows](https://www.microsoft.com/pt-br/windows/).

[Crazy DiskMark](https://github.com/fredcox/crazydiskmark/) é um front-end para o **[fio - Flexible I/O tester](https://fio.readthedocs.io/en/latest/fio_doc.html)**, 
que é uma aplicação para testes de **entrada/saída** estável, código aberto, precisa e disponível para Linux.

A motivação por trás do desenvolvimento do [Crazy DiskMark](https://github.com/fredcox/crazydiskmark/) residiu no fato de
não haver um benchmark intuitivo, fácil, com interface gráfica semelhante ao [CrystalDiskMark](https://crystalmark.info/en/software/crystaldiskmark/). 


Enfim, não havia uma alternativa para Linux, então decidi desenvolvê-la.   

# Atenção

Este programa foi desenvolvido para utilização **somente em discos do estado sólido - SSD´s**. **Não** se deve utilizar
o [Crazy DiskMark](https://github.com/fredcox/crazydiskmark/) em HD´s mecânicos.


[Crazy DiskMark](https://github.com/fredcox/crazydiskmark/) está disponível para as seguintes distros:

1. [Arch Linux](https://www.archlinux.org/) e derivados (Manjaro, EndeavourOS)
2. [Ubuntu](https://ubuntu.com/), [Debian](https://www.debian.org/index.pt.html) e 
distros relacionadas ([MxLinux](https://mxlinux.org/), [PopOS](https://pop.system76.com/), [Linux Mint](https://linuxmint.com/), etc)
3. [Fedora32](https://getfedora.org/pt_BR/).   

# Instalação no Arch Linux e Derivados (Manjaro)

Se você trabalha com **[Arch Linux](https://www.archlinux.org/)** ou qualquer outra distro derivada, tal qual 
**[Manjaro](https://manjaro.org/)**, o pacote **crazydiskmark** está disponível para instalação pelo 
**[AUR](https://aur.archlinux.org/)** e você pode instalá-lo com o seguinte simples comando:
 
 ```shell
$ yay -S crazydiskmark
$ crazydiskmark 
```

# [Ubuntu](https://ubuntu.com/), [Debian](https://www.debian.org/index.pt.html) e distros relacionadas ([MxLinux](https://mxlinux.org/), [PopOS](https://pop.system76.com/), [Linux Mint](https://linuxmint.com/), etc)

```bash
$ sudo add-apt-repository ppa:fredcox-p/crazydiskmark
$ sudo apt update
$ sudo apt install crazydiskmark
```

# [Fedora32](https://getfedora.org/pt_BR/)

```bash
$ sudo dnf copr enable fredcox/crazydiskmark
$ sudo dnf update
$ sudo dnf install crazydiskmark
```

# Conclusão

Para efetuar benchmark em um disco específico, selecione o diretório correspondente à **partição ou ponto de montagem**
do device a qual deseja-se aferir o desempenho. 

É isso, espero ter ajudado.
  