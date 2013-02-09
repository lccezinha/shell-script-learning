#!/bin/bash

echo "Usando FOR"
echo "Listando arquivos do diretório `pwd`"

#verificar se nome ja existe para criar o diretório de backup
criar_dir()
{
  echo "Nome de diretório de backup : "
  read diretorio_backup
  #se não existir o nome...
  if [ ! -e $diretorio_backup ];
  then
    mkdir $diretorio_backup
  else
    echo "Nome já existe informe outro"
    criar_dir;
  fi 
  clear
}

#copia os arquivos
copiar()
{
  for x in *
    do
      cp $x $diretorio_backup
    done
  echo "Copias criadas..."
  ls $diretorio_backup

}

echo "###################"
#ou um simple ls .
#listando arquivos do diretório atual
for x in *
  do
    echo $x
  done
echo "###################"


echo "Deseja copiar os arquivos ?"
read resposta
clear
#se falar que sim cria o backup
if [ $resposta = 'sim' ];
then
  criar_dir;
  copiar;
else
  echo "Saindo..."
  exit
fi




