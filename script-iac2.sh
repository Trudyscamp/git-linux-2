#!/bin/bash

echo "ATUALIZANDO O SERVIDOR....."

apt-get update
apt-get upgrade -y

echo "iNSTALACAO DO APACHE2....."

apt-get install apache2 -y

echo "INSTALANDO O UNZIP......"

apt-get install unzip -y

echo "BUSCANDO ARQUIVO NA WEB:......"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "DESCOMPACTANDO ARQUIVO......."

unzip main.zip

echo "MOVENDO ARQUIVO PARA PASTA DO APACHE...."
cd linux-site-dio-main
cp -R * /var/www/html/

