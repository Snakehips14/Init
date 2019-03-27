#!/bin/bash

read -p "Quel utilisateur connecte voulez vous supprimer ? " USR
if w | grep -q $USR ; then
	read -p "Etes vous sur ?" yn
	if [ "$yn" = "Y" ] || [ "$yn" = "y" ]; then
		sudo userdel -f $USR
		echo "utilisateur supprime"
	elif [ "$yn" = "N" ] || [ "$yn" = "n" ]; then
		echo "Demande prise en compte"
	fi
else
	echo "$USR n'est pas connecte ou n'existe pas, merci de selectionner un nouvel utilisateur."
fi
