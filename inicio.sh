#!/bin/bash #llamada a bash

# Programa que ejecuta los programas para las diferentes copias 1º Copia del VDI Win10, 2º Copia del servidor de almacenamiento, 3º copia del FTP de la web

# Versión 0.1   <----------> Fecha 08/04/2019
# Desarrollador Victor Gutierrez Sanchez info@rekat.es https://rekat.es https://rekat.es#contacto

echo "Lanzando programa para hacer copias del VDI Win 10"

sh /home/cambioenergetico/programascopia/backupvdi.sh

echo "Lanzando programa para hacer copias del VDI del Firewall IPFire"

sh /home/cambioenergetico/programascopia/copiaipfire.sh

# Script para mover/cortar copias al disco mecánico y que calcule el tiempo que tarda

echo  "Moviendo copias de seguridad al disco mecánico"

start_time1=$(date +%s)

mv /home/cambioenergetico/*.tar.gz /media/cambioenergetico/discocopias

finish_time1=$(date +%s)
echo "Tiempo en mover las copias de seguridad de los VDI al disco mecánico: $((finish_time1 - start_time1)) segs."
