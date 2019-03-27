#!/bin/bash

read -p "Voulez vous vous connaitre le login, l'UID, et le path 
de chaque entree du fichier ? (Y/N) : " yn
case $yn in
	[Yy]* ) cat /etc/passwd | awk -F  ":" '{print $1 "   " $3 "   " $6}' | column -t ;;
	[Nn]* ) echo "alors tant pis mon pote :(";;
	* ) echo "Merci de repondre par Y/y ou N/n";;
esac
