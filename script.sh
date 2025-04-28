#!/bin/bash

git clone https://github.com/sr-tream/qsudo.git
mkdir qsudo-build
cd qsudo-build
qmake ../qsudo

make -j$(nproc --all)

sudo cp qsudo /usr/bin

cd ..

rm ~/.local/share/applications/hiddify.desktop
cp hiddify.desktop ~/.local/share/applications/
