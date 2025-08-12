#!/bin/bash

# Crear carpeta principal
mkdir -p MEX

# Lista de abreviaciones de estados de México
estados=(
"AGS" "BC" "BCS" "CAMP" "COAH" "COL" "CHIS" "CHIH" "CDMX" "DGO"
"GTO" "GRO" "HGO" "JAL" "MEX" "MICH" "MOR" "NAY" "NL" "OAX"
"PUE" "QRO" "QROO" "SLP" "SIN" "SON" "TAB" "TAMPS" "TLAX" "VER"
"YUC" "ZAC"
)

# Crear las carpetas
for estado in "${estados[@]}"; do
    mkdir -p "MEX/$estado"
done

echo "Carpetas creadas dentro de MEX."
