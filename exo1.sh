#!/bin/bash

echo Voici les fichiers se terminant par php : `find . -type f -name "*.php"`
echo Les fichiers se terminant par log : `find . -type f -name "*.log"`
echo Noms de fichiers avec i en seconde position : `find . -type f -name "?i*"`
echo Noms de fichiers avec premiere lettre comprise entre b et s : `find . -type f -name "[b-s]*"`
echo noms de fichiers qui ne commencent pas par une voyelle : `find . -type f -name "[!aeiouyAEIOUY]*"` 
echo termine pas par php : `find . -type f ! -name "*.php"`
echo termine pas par txt : `find . -type f ! -name "*.txt"`
echo contient 866 : `grep -r1 "866"`
echo avec abc : `grep ! -r1 "abc"`
echo abc et 866 une ou plusieurs fois : `grep -r1E "abc|866"`

