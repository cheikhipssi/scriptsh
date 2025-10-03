#!/bin/bash
 verif() {
 if [ -e $1 ]; then 
 echo existe 
 else 
 echo not ok
 fi 
 }
 addition() {
 somme=0
 add=0
 while read ligne
 do
 #((add+=ligne))
 let add=add+ligne
 let somme=somme+1
 done < $1
 echo le nombre des lignes $somme
 echo la somme des lignes est $add
 }
 nblignes(){
 cat $1 | wc -l 
 }
 max(){
 #echo le max est $(sort $1 | tail -1 ) 
 echo le max est $(sort -n $1  |tail -1) 

 }
 min (){
 #sort -n $1 
 echo le min est $(sort -n $1  |head  -1)
 }
 
 
#modifier ce script de facon à ce que l'option -m affiche le min -M affiche le max -v pour vérifier l'exitance d'un fichier  -s somme des lignes -n affiche le nombre de lignes et -h pour le manuel d'utilisation  sachant que je peux lanvcer plusieurs options à la fois 

 while getopts "m:M:v:s:n:h" opt ; 
 do 
 case $opt in 
 v) verif $OPTARG ;;
 s) addition $OPTARG ;;
 n) nblignes $OPTARG ;;
 m) min $OPTARG ;;
 M) max $OPTARG ;; 
 h) echo "-m affiche le min -M affiche le max -v pour vérifier l'exitance d'un fichier  -s somme des lignes -n affiche le nombre de lignes et -h pour le manuel d'utilisation" ;;
 *) echo erreur ;; 
 esac 
 done
 
 
 
 
 
 
 

