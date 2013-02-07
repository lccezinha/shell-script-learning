#!/bin/bash

echo "Digite o seu nome : "
read nome
echo "Seu nome é : $nome"

if [ $nome = "Luiz" ];
then
  echo "Bem vindo Luiz"
else
  echo "Vá embora $nome você é estranho!"
fi



