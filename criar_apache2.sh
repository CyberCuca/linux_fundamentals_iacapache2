#!/bin/bash

echo "Atualizando servidor.."
apt-get update -y
apt-get upgrade -y
echo "Servidor atualizado!"

echo "Instalando apache e unzip.."
apt-get install apache2 -y
apt-get install unzip -y
echo "Apache e unzip instalados!"

echo "Navegando para a pasta /temp"
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Repositorio com arquivos site baixado!"

echo "Descompactando conteudo..."
unzip main.zip
echo "Conteudo descompactado!"

cd linux-site-dio-main
echo "Pasta do conteudo criada!"

cp -R * /var/www/html/
echo "Arquivos do site copiados para o servidor com sucesso!"

echo "Operacao concluída, cheque o IP do servidor!"
