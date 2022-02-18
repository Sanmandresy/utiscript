#!/bin/sh
echo "On va se déplacer dans le dossier contenant les fichiers."
cd directory && echo "Changement de répertoire réussi"
echo "Maintenant on va créer une boucle qui va prendre en paramètre tous les fichiers du répertoire actuel et les renommer"
#Pour enlever l'extension
for files in *;do
 mv -- "$files" "${files%%.*}"
done
#Puis pour ajouter le suffixe et l'extension
for nfiles in *;do
 mv "$nfiles" "${nfiles%}_doc.txt"
done
echo "Opération terminée"
