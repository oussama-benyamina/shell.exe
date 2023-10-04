#!/bin/bash

# Vérifiez si les deux arguments ont été fournis
if [ $# -ne 2 ]; then
  echo "Usage: $0 <nouveau_fichier> <fichier_a_copier>"
  exit 1
fi

# Récupérez les noms des fichiers à partir des arguments
nouveau_fichier="$1"
fichier_a_copier="$2"

# Vérifiez si le fichier à copier existe
if [ ! -e "$fichier_a_copier" ]; then
  echo "Le fichier à copier '$fichier_a_copier' n'existe pas."
  exit 1
fi

# Copiez le contenu du fichier à copier dans le nouveau fichier en utilisant la redirection
cat "$fichier_a_copier" > "$nouveau_fichier"

# Vérifiez si la copie a réussi
if [ $? -eq 0 ]; then
  echo "Le contenu de '$fichier_a_copier' a été copié dans '$nouveau_fichier'."
else
  echo "Une erreur s'est produite lors de la copie du contenu."
fi

