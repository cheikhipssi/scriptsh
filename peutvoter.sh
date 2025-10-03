#!/bin/bash

read -p "Quel est ton prenom ? : " prenom 
read -p "Quel age as tu ? : " age

if ["$age" -ge 18];then
echo "Bonjour $prenom, tu peux voter !"
else
echo "Bonjour $prenom, tu ne peux pas voter !"
fi
