#!/bin/bash

read -p "Voulez-vous voir le nombre de users connectes et le nombre de processus ? Y/N : " yn
if [ "$yn" = "y" ] || [ "$yn" = "Y" ]; then
	echo "Nb de users connectes :"
	users | wc -l | cut -c8
	echo "Nb de processus en cours : "
	ps -eal | wc -l | cut -c6-8
elif [ "$yn" = "n" ] || [ "$yn" = "N" ]; then
	echo "C'est vraiment dommage :("
else
	echo "Merci de repondre par Y ou N (ou y/n)"
fi
