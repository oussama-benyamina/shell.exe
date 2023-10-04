#!/bin/bash

# Date et heure au format jj-mm-aaaa-HH:MM
date_format=$(date +"%d-%m-%Y-%H:%M")

# Nom du fichier avec la date
fichier_log="number_connection-$date_format.txt"

# Extraire le nombre de connexions de l'utilisateur (par exemple, 'username')
echo $(cat /var/log/auth.log | grep "session opened for user $1" | wc -l) > $fichier_log

tar -cf "./number_connection-$date_format.tar" "$fichier_log"

mv "./number_connection-$date_format.tar" "./Backup/"
rm "$fichier_log"
