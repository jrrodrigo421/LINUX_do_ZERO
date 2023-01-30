#!/bin/bash
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echor "baicando e copiando os arquivos da aplicação"

cd /tmp
wget https://github.com/jrrodrigo421/Aplicacao_Web_Servidor_Linux/archive/refs/heads/main.zip

cd linux-site-dio-main

cp -R * /var/www/html/
