#!/bin/bash

# Skript pro odeslání změn na GitHub

# Zastaví skript při chybě
set -e

# Přidá všechny změněné soubory
git add .

# Získá zprávu pro commit od uživatele

msg="$(date '+%Y-%m-%d %H:%M:%S')"
# Vytvoří commit
git commit -m "$msg"

# Odesílá změny na vzdálený repozitář
git push

echo "Změny byly odeslány na GitHub."
