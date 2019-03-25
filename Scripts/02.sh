#!/bin/bash

read -p "Quel utilisateur connecte voulez vous supprimer ? " USR
if [[ $(users | grep $USR) != "" ]]; then
	sudo userdel -f $USR
	echo "utilisateur supprime"
else
	echo "$USR n'est pas connecte ou n'existe pas, merci de selectionner un nouvel utilisateur."
fi
