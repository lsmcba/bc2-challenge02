#!bin/bash

cd $HOME
mkdir nueva_carpeta
cd nueva_carpeta
touch archivo_nuevo.txt
mv archivo_nuevo.txt archivo_viejo.txt
echo "Nueva línea de texto" > archivo_viejo.txt
chmod a+rwx archivo_viejo.txt
cd ..
ln -s $HOME/nueva_carpeta/archivo_viejo.txt enlace.ln
rm -rf nueva_carpeta