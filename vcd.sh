#!/bin/bash
if [[ $1 == "login" ]] || [[ $1 == "-l" ]] ; then
    ~/vcd/connect.sh "${@:2}"

elif [[ $1 == "stop" ]] || [[ $1 == "-stop" ]] ; then
    ./stop.sh "${@:2}"
elif [[ $1 == "start" ]] || [[ $1 == "-start" ]] ; then
    ./start.sh "${@:2}"
elif [[ $1 == "reboot" ]] || [[ $1 == "-reboot" ]] ; then
    ./reboot.sh "${@:2}"
else
    ~/vcd-cli-venv/bin/vcd  $@
fi