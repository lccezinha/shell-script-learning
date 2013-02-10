#!/bin/bash


echo "WHILE"
cont=0
while [ $cont -ne 10 ];
do
  echo "Contador: $cont"
  cont=$((cont+1))
done

echo "###########"

cont_=10
until [ $cont_ -lt 0 ];
do
  echo "Contador: $cont_"
  cont_=$((cont_-1))
done
