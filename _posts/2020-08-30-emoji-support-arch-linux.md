---
title: Habilitando Suporte a Emojis no Arch Linux
published: true
tags:
- Arch Linux
- Emoji
- github
- Manjaro
- EndeavourOS

image: /assets/banners/emoji-support-arch-linux-black.png

---


![banner-plex](/assets/banners/emoji-support-arch-linux.png)

Este tutorial deve funcionar no Arch Linux e nas distribuições derivadas, tais como Manjaro Linux.


# Instale uma fonte emoji

Você precisa de uma fonte que inclua **emojis**, para isso, eu sugiro a fonte **Noto** do [Google](https://www.google.com.br/), que também é utilizada pelo
[Android](https://www.android.com/intl/pt-BR_br/). 
 
O pacote [noto-fonts-emoji](https://www.archlinux.org/packages/extra/any/noto-fonts-emoji/) inclue somente caracteres **emojis**.

Para instalar o pacote digite os seguintes comandos:

```shell
$ sudo pacman -S noto-fonts-emoji
```

# Faça com que o Sistema Reconheça a Fonte Instalada

Precisamos agora fazer com que o sistema realize a **indexação** da nova fonte **emoji** instalada, para isso, 
crie o arquivo **~/.config/fontconfig/fonts.conf**. Você precisará criar o diretório **fontconfig** também e depois
o arquivo **fonts.conf** dentro deste diretório. 

Se você prefere que essa alteração seja efetuada para todos os usuários no sistema, então
edite o arquivo **/etc/fonts/local.conf**, ao invés do arquivo **~/.config/fontconfig/fonts.conf**.

o arquivo **fonts.conf** deverá ter o seguinte conteúdo:
```xml
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
 <alias>
   <family>sans-serif</family>
   <prefer>
     <family>Noto Sans</family>
     <family>Noto Color Emoji</family>
     <family>Noto Emoji</family>
     <family>DejaVu Sans</family>
   </prefer> 
 </alias>

 <alias>
   <family>serif</family>
   <prefer>
     <family>Noto Serif</family>
     <family>Noto Color Emoji</family>
     <family>Noto Emoji</family>
     <family>DejaVu Serif</family>
   </prefer>
 </alias>

 <alias>
  <family>monospace</family>
  <prefer>
    <family>Noto Mono</family>
    <family>Noto Color Emoji</family>
    <family>Noto Emoji</family>
   </prefer>
 </alias>
</fontconfig>
```


Efetue um reboot e volte aqui para certificar se a área abaixo está mostrando os emojis correspondentes.  

- 🙂 smile
- 🇨🇦 Canada flag (if your font does not support the flag, this may show up as CA)
- Pride flag (part of Emoji 4.0; if your font does not support the flag, this may show up as a white flag and a rainbow)
- 🤩 Star-Struck (part of Emoji 5.0)
- 🥳 Party head (part of Emoji 11.0)
- 🦮 Guide Dog (part of Emoji 12.0)

