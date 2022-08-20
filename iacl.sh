#!/bin/bash

echo "Criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários e Movendo eles para os seus respectivos grupos..."

useradd saniely -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd eduarda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd gustavo -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd patricia -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd pamela -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd elizabete -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd flavia -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd giovana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd erik -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando as permissãoes dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chown 770 /adm
chown 770 /ven
chown 770 /sec
chown 777 /publico

echo "Fim..."

