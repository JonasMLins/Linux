#!/bin/bash

echo "Adicionando diretórios..."

mkdir /publico
mkdir /adm
mkdir /vem
mkdir /sec

echo "Adicionando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Adicionando usuários..."

useradd tecnico1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd tecnico2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd tecnico3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd tecnico4 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd tecnico5 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd tecnico6 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd tecnico7 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd tecnico8 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd tecnico9 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Atribuindo permissões de diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fimalizado com sucesso"