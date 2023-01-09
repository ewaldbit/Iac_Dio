#!/bin/bash

echo "Inicializando estrutura de diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos....."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e inserindo aos grupos...."

useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
usermod -G GRP_ADM carlos

useradd maria -c "Maria Barcelos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
usermod -G GRP_ADM maria

useradd joao -c "João Ribeiro" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
usermod -G GRP_ADM joao

useradd debora -c "Débora da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
usermod -G GRP_VEN debora

useradd sebastiana -c "Sebastiana Monteiro" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
usermod -G GRP_VEN sebastiana

useradd roberto -c "Roberto Camargo" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
usermod -G GRP_VEN roberto

useradd josefina -c "Josefina Barbosa" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
usermod -G GRP_SEC josefina

useradd amanda -c "Amanda Ribeiro" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
usermod -G GRP_SEC amanda

useradd rogerio -c "Rogério Augusto" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
usermod -G GRP_SEC rogerio

echo "Definindo permissões dos diretórios....."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Estrutura criada com sucesso!!!"