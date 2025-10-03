#!/bin/bash

case $1 in
A−Z]) echo caractère majuscule ;;
[a-z]) echo caractère miniscule ;;
[0-9]) echo caractère chiffre ;;
[[:punct:]]) echo caractere special ;;
*) echo pas de caractere ;;
esac

