#!/bin/bash

echo "Usando FOR"
echo "Listando arquivos do diretório `pwd`"

#verificar se nome ja existe para criar o diretório de backup
criar_dir()
{
  echo "Nome de diretório de backup : "
  read diretorio_backup
  #se não existir o nome...
  if [ ! -e $diretorio_backup ]; then
    mkdir $diretorio_backup
  else
    echo "Nome $diretorio_backup já existe informe outro"
    criar_dir;
  fi 
  clear
}

#copia os arquivos
copiar()
{
  echo "copiando arquivos para de `pwd` para $diretorio_backup"
  sleep 3
  for x in * do
    cp $x $diretorio_backup
  done
  echo "Copias criadas..."
  #se estiver vazio é pq deu erro ER se não é pq copiou
  if [ -z $diretorio_backup ]; then
    echo "Ocorreu algum erro, arquivos não copiados."
  else
    echo "Arquivo copiados para $diretorio_backup : "
    ls $diretorio_backup  
  fi
}

echo "###################"
#ou um simple ls .
#listando arquivos do diretório atual
for x in * do
  echo $x
done
echo "###################"


echo "Deseja copiar os arquivos ? [sim, não]"
read resposta
clear
#se falar que sim cria o backup
if [ $resposta = 'sim' ];
then
  criar_dir;
  copiar;
else
  echo "Saindo..."
  sleep 2
  clear 
  exit
fi




