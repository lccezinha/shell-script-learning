#!/bin/bash

echo "Usando condicionais..."
echo "Entre com seu nome : "
read nome

if [ $nome = "Luiz" ];
then
  echo "Bem vindo Luiz"
else
  echo "Vá embora $nome você é estranho!"
fi
