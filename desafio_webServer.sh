#!/bin/bash

echo "Atualizando sistema..................."

apt update

echo "Instalação do Apache e Unzip.........."

apt install apache2 unzip -y

echo "Baixando aplicação no tmp............."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
mv main.zip /tmp

echo "Descompactando a aplicação............"

cd /tmp
unzip main.zip

echo "Disponibilizando aplicação no Apache.."

cp -r linux-site-dio-main/* /var/www/html