#!/bin/bash

# Chemin vers le fichier CSV contenant les informations des utilisateurs
fichier_csv="/chemin/vers/votre_fichier.csv"

# Fonction pour créer un utilisateur avec un statut
creer_utilisateur() {
  username="$1"
  status="$2"

  # Créer l'utilisateur
  useradd -m "$username"

  # Si l'utilisateur a le statut "admin", attribuer des permissions de super utilisateur
  if [ "$status" == "admin" ]; then
    usermod -aG sudo "$username"
  fi
}

# Lire le fichier CSV ligne par ligne
while IFS=, read -r username status; do
  creer_utilisateur "$username" "$status"
done < "$fichier_csv"


