#!/bin/bash

# Obtener la ruta del script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Definir la ruta un nivel arriba
DESTINO="$(dirname "$SCRIPT_DIR")"

# Lista de abreviaciones de estados de México
estados=(
"AGS" "BC" "BCS" "CAMP" "COAH" "COL" "CHIS" "CHIH" "CDMX" "DGO"
"GTO" "GRO" "HGO" "JAL" "MEX" "MICH" "MOR" "NAY" "NL" "OAX"
"PUE" "QRO" "QROO" "SLP" "SIN" "SON" "TAB" "TAMPS" "TLAX" "VER"
"YUC" "ZAC"
)

# Crear carpeta principal y subcarpetas
mkdir -p "$DESTINO/MEX"

for estado in "${estados[@]}"; do
    mkdir -p "$DESTINO/MEX/$estado"
done

echo "Carpetas creadas en: $DESTINO/MEX"
