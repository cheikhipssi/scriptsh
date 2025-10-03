#!/bin/bash

echo "Le nombre des fichiers PNG est :"
ls /usr/share/pixmaps/*.png 2>/dev/null | wc -l

echo "Le nombre des fichiers JPG (sauf liens symboliques) est :"
find /usr/share/pixmaps/ -type f -name "*.jpg" | wc -l
