#!/bin/bash

executar()
{
  echo "Executando ação..."
}

limpar()
{ 
  echo "limpando alguma coisa..."
}

excluir()
{
  echo "Excluindo algo..."
}

sair()
{
  echo "saindo..."
  exit
}

invalida()
{
  echo "Opcao invalida sua mula !"
}


opcoes()
{
  #$1-$9 numero do argumento passado.
  case $1 in 
    1)
      executar
    ;;
    2)
      limpar
    ;;
    3)
      excluir
    ;;
    4)
      sair
    ;;
    *)
      invalida
  esac
}


#-e irá dizer que o echo irá interpretar os \qualquer_coisa no texto
#-n não irá quebrar linha para pegar o valor passado 

echo -e "Usando case...\n"
echo "----------------"
echo "1. Executar()"
echo "2. Limpar()"
echo "3. Excluir()"
echo "4. Sair()"
echo "Digite a opção : "
read opcao

#passando o argumento lido para a funçaõ
opcoes $opcao;
#argumento sera o $1

