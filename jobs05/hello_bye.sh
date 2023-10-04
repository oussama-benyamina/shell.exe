#!/bin/bash

# Vérifiez si un argument a été fourni
if [ $# -ne 1 ]; then
  echo "Usage: $0 <argument>"
  exit 1
fi

# Récupérez l'argument passé
argument="$1"

# Utilisez une structure de contrôle pour afficher le message approprié
if [ "$argument" == "Hello" ]; then
  echo "Bonjour, je suis un script !"
elif [ "$argument" == "Bye" ]; then
  echo "Au revoir et bonne journée !"
else
  echo "Argument non reconnu : $argument"
fi

