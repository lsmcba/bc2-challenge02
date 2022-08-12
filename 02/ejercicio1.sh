#!/bin/bash

rm -rf archivos/

mkdir archivos
cd archivos
touch archiv1 archiv2 archiv3 archiv4 archiv5 archiv6 archiv7 archiv8 archiv9
chmod a-rwx archiv*
ls -l