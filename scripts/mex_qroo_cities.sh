#!/bin/bash
# crea QROO/ con carpetas por municipio (abreviaciones) un nivel arriba del script

# Ubicación del script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# Destino: carpeta padre del script
DESTINO="$(dirname "$SCRIPT_DIR")"

# Abreviaciones sugeridas de municipios de Quintana Roo
# COZ=Cozumel, FCP=Felipe Carrillo Puerto, IMU=Isla Mujeres, JMM=José María Morelos,
# LCA=Lázaro Cárdenas, OPB=Othón P. Blanco, SOL=Solidaridad, TUL=Tulum,
# BJZ=Benito Juárez, BAC=Bacalar, PMO=Puerto Morelos
municipios=( "COZ" "FCP" "IMU" "JMM" "LCA" "OPB" "SOL" "TUL" "BJZ" "BAC" "PMO" )

# Crear carpeta principal y subcarpetas
mkdir -p "$DESTINO/QROO"
for m in "${municipios[@]}"; do
  mkdir -p "$DESTINO/QROO/$m"
done

echo "Carpetas creadas en: $DESTINO/QROO"
