#!/bin/bash

cd ~/repogit/UTNFRA_SO_1P2C_2024_GAUTO/RTA_ARCHIVOS_Examen_20241006

sudo cat /proc/meminfo | grep -i memtotal | awk -F ':' '{print$2}' > Filtro_Basico.txt

sudo dmidecode -t chassis | grep -i manufacturer >> Filtro_Basico.txt
