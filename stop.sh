#!/bin/bash

SERVER_LIST="$1"
total_line=$(( `wc -l ${SERVER_LIST} | cut -d' ' -f1`+1))
line=1

while [[ ${line} -le ${total_line} ]] ; do
    vapp=$(sed -n "${line}p" "$SERVER_LIST" | cut -d',' -f1 | sed 's/^"\?\(.*\)"\"\?$/\1/')
    vm=$(cut -d',' -f"2" $SERVER_LIST | sed -n "${line}p")
    ~/vcd-cli-venv/bin/vcd vm shutdown "$vapp" "$vm"
    ((line++))
done