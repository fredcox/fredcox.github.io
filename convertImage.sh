#!/bin/bash

# shellcheck disable=SC2034
image=$1
y=${image%.png}
newFilename=${y##*/}-black.png


echo "$newFilename"


convert "assets/banners/$image" -background black -alpha remove -alpha off "assets/banners/$newFilename"
