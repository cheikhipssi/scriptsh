#!/bin/bash
 
echo -e "\npremier nombre = "$1
echo -e "\ndeuxieme nombre = "$2
echo -e  "operation choisi : " op
 
 
echo "resultat: $(($1 $op $2))"
