#!/bin/bash #llamada a bash
# Copia de seguridad del Firewall IpFire
# Versión 0.1   <----------> Fecha 22/03/2019
# Versión 0.12  <----------> Fecha 25/03/2019
# Desarrollador Victor Gutierrez Sanchez info@rekat.es https://rekat.es https://rekat.es#$
start_time=$(date +%s) #para mostrar el tiempo de ejecución/finalización del programa, em$
echo "Sistema de copias de Cambio Energético"
echo "Haciendo copia del disco virtual, Firewall IpFire"
echo "Trabajando..."

HORACOPIA=`date +%b-%d-%y` #obtiene la fecha correcta

DESTINO=/home/cambioenergetico/copiaipfire-$HORACOPIA.tar.gz #esta es la carpeta destin$
CARPETAFUENTE=/home/cambioenergetico/vdi/IpFire #esta es la carpeta a copiar

tar -cpzf $DESTINO $CARPETAFUENTE #crea el backup y lo comprime

echo "Copia finalizada"

finish_time=$(date +%s) #para tiempo de finalización del programa
echo "Tiempo en realizar la copia: $((finish_time - start_time)) segs." #hace la cuenta p$

# echo "Moviendo copia al disco mecánico..."

# Script para mover/cortar copias al disco mecánico y que calcule el tiempo que tarda

# start_time1=$(date +%s)

# mv /home/cambioenergetico/*.tar.gz /media/cambioenergetico/discocopias

# finish_time1=$(date +%s)
# echo "Tiempo en mover la copia del VDI al disco mecánico: $((finish_time1 - start_time1))$
