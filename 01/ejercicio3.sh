#!/bin/bash

read -p "Introduzca un Texto para agregar al Archivo File1.txt: " texto
rm -rf foo

mkdir -p foo/dummy foo/empty
touch foo/dummy/file1.txt
if ["$texto" != ""]
then
    echo "Que Me encanta bash!!" > foo/dummy/file1.txt
else
  
    echo $texto > foo/dummy/file1.txt
fi
touch foo/dummy/file2.txt
cat foo/dummy/file1.txt >> foo/dummy/file2.txt
mv foo/dummy/file2.txt foo/empty/file2.txt