#!/bin/bash

# Vérifie que le fichier est spécifié

if [ $# -ne 2 ]; then
  echo "Fichier : $1 "
  # Description du fichier
  echo Le type du fichier est `file $1`
  echo Le mode d acces de ce fichier est `ls -l $1`
  echo Verifie l appartenance du fichier ici `stat $1`
  exit 1
fi

# Teste l'existence du fichier source
[ ! -f "$1" ] && echo "Erreur : le fichier source n'existe pas." && exit 1


