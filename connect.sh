#!/bin/bash

# COMMENTAIRE
# #Récuperer un token via l'inspeteur réseau. Se trouve dans la partie cookie après login du user.

##### VARS FILES
source ./vars/host.var
source ./vars/colors.var
# ARGS SCRIPT
username=$1
token=$2


# USER CONNECTION
if [[ $# -gt 1 ]]; then 
    ~/vcd-cli-venv/bin/vcd login "$server" $tenant $username -i -w -d $token 2> /dev/null ||
    echo -e "${RED} Erreur: ${WHITE}username ou token invalide"
elif [[ $# -lt 1 ]]; then
    echo -e "${GREEN} Utilisation: ${WHITE}./vcd_connect.sh <username> [<token_session>] \n"
else
    ~/vcd-cli-venv/bin/vcd login "$server" $tenant "$username" -i -w 2> /dev/null 
fi
