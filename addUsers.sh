#!/bin/bash

######################################################################################################################
# Script de Création d'utilisateurs
# Ne pas oublier d'ajouter sudo pour démarrer le script.
######################################################################################################################

echo -e "\nBienvenue dans le script de création d'utilisateurs !\n"

if [ $# -eq 0 ]
then
    echo -e "Il manque les noms d'utilisateurs en argument.\n\n - Fin du script - \n"
    exit 1
fi

if [ $# -gt 1 ]
then
    for nom_utilisateur_sup in $@
	  do
        while true
	      do
			      if id "$nom_utilisateur_sup" 2>/dev/null
			      then
				        echo -e "\nL'utilisateur $nom_utilisateur_sup existe déjà !\n"
				        break
			      else
				        useradd "$nom_utilisateur_sup"	
				        if ! [ "$?" -eq 0 ]
				        then
					          echo -e "\nErreur à la création des utilisateurs $nom_utilisateur_sup.\nVeuillez recommencer SVP."
					          break 
				        else
					          echo -e "L'utilisateur $nom_utilisateur_sup a bien été créé !\n"
					          break
				        fi
			      fi
		    done
	  done
else
	  for nom_utilisateur_inf in "$@"
	  do
		    while true
		    do
			      if id "$nom_utilisateur_inf" 2>/dev/null
			      then
				        echo -e "\nL'utilisateur $nom_utilisateur_inf existe déjà !\n"
				        read -p "Veuillez entrer un nom d'utilisateur non-existant SVP. " nom_utilisateur
				        continue
			      else
				        useradd "$nom_utilisateur_inf"	
				        if ! [ "$?" -eq 0 ]
				        then
					          echo -e "\nErreur à la création de l'utilisateur $nom_utilisateur_inf.\nVeuillez recommencer SVP."
					          continue 
				        else
					          echo -e "\nL'utilisateur $nom_utilisateur_inf a bien été créé !\n"
					          break 2
				        fi	
			      fi	
		    done
	  done
fi

echo -e "Merci d'avoir utilisé le script de création d'utilisateurs !\n"

exit 0
