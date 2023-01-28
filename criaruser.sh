#!/bin/bash

echo "Criando usuarios do sitema..."

useradd guest10 -c "Usuario Convidado." -s /bin/bash -m -p 123 #$(openssl passwd -crypt Senha123)
passwd guest10 -e

useradd guest11 -c "Usuario Convidado." -s /bin/bash -m -p 123 # $(openssl passwd -crypt Senha123)
passwd guest11 -e

useradd guest12 -c "Usuario Convidado." -s /bin/bash -m -p 123 # $(openssl passwd -crypt Senha123)
passwd guest12 -e

useradd guest13 -c "Usuario Convidado." -s /bin/bash -m -p 123 # $(openssl passwd -crypt Senha123)
passwd guest13 -e

useradd guest14 -s /bin/bash 
passwd guest14


echo "Finalizado!"



