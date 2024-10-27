#!/bin/bash

echo "Je vais me presenter"

nom=$1
prenom=$2
ann_nais=$3
age=$(( 2024-ann_nais ))

echo $nom
echo $prenom
echo $ann_nais
echo -e "Je m'appelle $nom $prenom et j'ai $age"
