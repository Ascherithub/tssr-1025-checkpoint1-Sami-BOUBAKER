Shebang du script.  EFFECTUE EN DEHORS DU TIMING


Titre du script.  
Consigne pour le bon focntionnement du script.    


Affiche un message de bienvenue dans le script.    

Si le nombre d'arguments est égal à zéro et donc qu'il n'y a pas de propositions de nom d'utilisateurs,
Alors  
    Affiche le message : Il manque les noms d'utilisateurs en argument. - Fin du script -  
    Quitte le script avec une sortie d'erreur 1.  
Fin de condition.  

Si le nombre d'arguments est strictement supérieur à 1 et donc qu'il y a plus d'une proposition de noms   d'utilisateurs,  
Alors  
    Pour chaque variable nom d'utilisateur donnée en argument  
    On fait  
        Si le nom d'utilisateur existe, message d'erreur non affiché,  
        Alors  
            Affiche pour chacun des nom d'utilisateurs qu'il existe déjà !  
            Sortie de boucle  
        Sinon  
            Ajout du nom d'utilisateur  
            Si la sortie d'erreur n'est pas égale à 0  
            Alors  
                Affiche : Erreur à la création des utilisateurs. Veuillez relancer le script SVP.  
                Sortie de boucle  
            Sinon  
                Affiche : L'utilisateur a bien été créé !  
                Sortie de boucle  
            Fin de condition.  
        Fin de condition.  
    Boucle terminée.  
Sinon (nombre d'argument égal à 1 = une proposition de nom d'utilisateur)  
    Pour chaque variable nom d'utilisateur donnée en argument  
    On fait  
        Tant que c'est vrai  
        On fait  
            Si le nom d'utilisateur existe, message d'erreur non affiché,  
            Alors  
                Affiche que l'utilisateur existe déjà  
                Demande quel nom d'utilisateur voudrait-on à la place  
                Relance la boucle  
            Sinon  
                Ajout du nom d'utilisateur  
                Si la sortie d'erreur n'est pas égale à 0  
                Alors  
                    Affiche : Erreur à la création de l'utilisateurs. Veuillez recommencer SVP.  
                    Relance la boucle  
                Sinon  
                    Affiche : L'utilisateur a bien été créé !  
                    Sortie des 2 boucles  
                Fin de condition.  
            Fin de condition.  
        Boucle terminée.  
    Boucle terminée.  
Fin de condition.  

Affiche un message de remerciement pour l'utilisation du script.

Sortie de script 0 (sans erreur).
            
    
