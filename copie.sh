#!/bin/bash

# Vérifie que les deux arguments sont fournis
if [ $# -ne 2 ]; then
  echo "Utilisation : $0 fichier_source fichier_destination"
  exit 1
fi

# Teste l'existence du fichier source
[ ! -f "$1" ] && echo "Erreur : le fichier source n'existe pas." && exit 1

# Teste si le fichier destination existe déjà
[ -e "$2" ] && echo "Erreur : le fichier destination existe déjà." && exit 1

# Copie
cp "$1" "$2" && echo "Copie réussie."




