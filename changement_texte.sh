#!/bin/bash

# Fichier source
fichier="dates_cours.txt"

# Vérifie si le fichier existe
if [[ ! -f "$fichier" ]]; then
  echo "Fichier '$fichier' introuvable."
  exit 1
fi

# Traitement avec sed
sed -E 's/^([0-9].*)$/<date>\1<\/date>/' "$fichier"
