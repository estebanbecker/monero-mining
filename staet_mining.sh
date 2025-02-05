#!/bin/bash

# URL du binaire xmrig
XMRIG_URL="https://votre_serveur/chemin/vers/xmrig"

# Chemin local pour le binaire xmrig
XMRIG_PATH="/home/pi/xmrig"

# Adresse du pool et adresse du portefeuille
POOL_ADDRESS="YOUR_POOL_ADDRESS"
WALLET_ADDRESS="YOUR_WALLET_ADDRESS"

# Télécharger le binaire xmrig
wget -O $XMRIG_PATH $XMRIG_URL

# Rendre le binaire exécutable
chmod +x $XMRIG_PATH

# Lancer le minage
$XMRIG_PATH -o $POOL_ADDRESS -u $WALLET_ADDRESS -p x
