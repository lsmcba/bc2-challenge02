#!/bin/bash

rm busqueda.txt

wget -O busqueda.txt https://es.wikipedia.org/wiki/DevOps
read -p "Ingrese una palabra a Buscar: " buscar
echo
echo "Se encontro la palabra en las lineas: " 
grep -w -n -i "$buscar" busqueda.txt