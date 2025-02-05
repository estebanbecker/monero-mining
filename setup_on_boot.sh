#!/bin/bash

# Télécharger le script de minage
wget -O /home/pi/start_mining.sh https://raw.githubusercontent.com/votre_utilisateur/votre_depot/main/start_mining.sh

# Rendre le script exécutable
chmod +x /home/pi/start_mining.sh

# Configurer le script pour qu'il soit exécuté au démarrage
(crontab -l ; echo "@reboot /home/pi/start_mining.sh") | crontab -
