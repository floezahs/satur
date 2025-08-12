#!/bin/bash

# Obtener la ruta del script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Definir la ruta un nivel arriba
DESTINO="$(dirname "$SCRIPT_DIR")"

# Lista de abreviaciones de departamentos de Guatemala
departamentos=(
"GUA"   # Guatemala
"SAC"   # Sacatepéquez
"CHI"   # Chimaltenango
"ESQ"   # Escuintla
"SAN"   # San Marcos
"HUE"   # Huehuetenango
"QUE"   # Quetzaltenango
"TOT"   # Totonicapán
"SOL"   # Sololá
"CHU"   # Chiquimula
"JAL"   # Jalapa
"JUT"   # Jutiapa
"SANB"  # Santa Rosa
"ALT"   # Alta Verapaz
"BAJ"   # Baja Verapaz
"PET"   # Petén
"IZA"   # Izabal
"ZAC"   # Zacapa
"RET"   # Retalhuleu
"QUI"   # Quiché
"PRO"   # El Progreso
"SUCH"  # Suchitepéquez
)

# Crear carpeta principal y subcarpetas
mkdir -p "$DESTINO/GTM"

for dep in "${departamentos[@]}"; do
    mkdir -p "$DESTINO/GTM/$dep"
done

echo "Carpetas creadas en: $DESTINO/GTM"
