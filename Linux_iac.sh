#!/bin/bash

echo "Criando diretórios.."

mkdir -m 777 /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários.."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Especificando permissões"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Criando usuários.."

chmod g+rwx,o-rxw /adm /ven /sec

#Usuarios ADM
useradd Carlos -c "ADM1 - SUPERVISOR" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd Maria -c "Administador 2" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd Joao -c "Administrador 3" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM

#Usuarios VEN
useradd Debora -c "VEN1 - SUPERVISOR" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd Sebastiana -c "Vendas 2" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd Roberto -c "Vendas 3" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN

#Usuarios SEC
useradd Josefina -c "SEC1 - SUPERVISOR" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC

useradd Amanda -c "Secretaria 2" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC

useradd Rogerio -c "Secretaria 3" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC


echo "Finalizado"
