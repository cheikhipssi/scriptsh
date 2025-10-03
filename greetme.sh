#!/bin/bash
#Ecrit par Cheikh
#script greetme : premier script

echo Aujourdhui nous sommes le `date +"%d/%m/%Y"` et il est `date +"%H:%M:%S"`
echo Voici le calendrier de ce mois ci : `cal`
echo Le nom de cette machine est `hostname`
echo Le nom et la version du système sont : `hostnamectl`
echo Voici une liste de mes fichiers dans mon repertoire parent : `ls -l ~`
echo "Valeur de TERM : $TERM"
echo "Valeur de PATH : $PATH"
echo "Valeur de HOME : $HOME"

echo ""
echo "Au revoir - Il est $(date +'%H:%M:%S')"
