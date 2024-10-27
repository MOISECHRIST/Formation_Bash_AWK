#!/bin/bash

echo -e "Je vais me presenter :\n"

nom='MEKA'
prenom='Moise Christian'
ann_nais=1999
age=$(( 2024-ann_nais ))

echo $nom
echo $prenom
echo -e $ann_nais "\n"
echo -e "Je m'appelle $nom $prenom et j'ai $age ans"
