#!/bin/bash

# Vérifiez si trois arguments ont été fournis (nombre1, opérateur, nombre2)
if [ $# -ne 3 ]; then
  echo "Usage: $0 <nombre1> <opérateur> <nombre2>"
  exit 1
fi

# Récupérez les trois arguments
nombre1="$1"
operateur="$2"
nombre2="$3"

# Utilisez une structure de contrôle "case" pour déterminer l'opération à effectuer
case "$operateur" in
  +) resultat=$((nombre1 + nombre2))
     ;;
  -) resultat=$((nombre1 - nombre2))
     ;;
  /) resultat=$(awk "BEGIN {print $nombre1 / $nombre2}")
     ;;
  *) echo "Opérateur non pris en charge : $operateur"
     exit 1
     ;;
esac

# Affichez le résultat
echo "Résultat de l'opération : $nombre1 $operateur $nombre2 = $resultat"

