#!/bin/bash

# Vérifier que le fichier existe
if [ ! -f "$1" ]; then
  echo "Erreur : fichier introuvable." >&2
  exit 1
fi

f="$1"

# Calcul de la somme
function addition() {
somme=$(awk '{s+=$1} END{print s}' "$f")
echo "Somme des valeurs : $somme"
}

# Nombre de lignes
function nlignes() {
lignes=$(wc -l < "$f")
echo "Nombre de lignes : $lignes"
}

# Minimum et maximum
function minmax() {
min=$(sort -n "$f" | head -n 1)
max=$(sort -n "$f" | tail -n 1)
echo "Valeur minimale : $min"
echo "Valeur maximale : $max"
}

addition
nlignes
minmax

echo "Analyse terminée. Résultats ajoutés à '$f'."

# Sauvegarde des résultats à la fin du fichier{
  

#>> "$f"


