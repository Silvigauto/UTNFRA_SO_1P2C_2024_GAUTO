#!/bin/bash

sudo apt install curl

cd ~/repogit/UTNFRA_SO_1P2C_2024_GAUTO/RTA_ARCHIVOS_Examen_20241006

echo "mi ip publica es: $(curl -s ifconfig.me)" > Filtro_Avanzado.txt

echo "el hash de mi usuario es: $(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}')" >> Filtro_Avanzado.txt

echo "la url de mi repositorio es: $(git remote get-url origin)" >> Filtro_Avanzado.txt
