#!/bin/bash

# https://github.com/vmware-archive/vcd-cli

# DO : chmod +x *.sh
# Deps
sudo apt install -y python3-pip python3-full gcc
python3 -m venv $HOME/vcd-cli-venv

# VENV
. $HOME/vcd-cli-venv/bin/activate

# cmd executed in "vcd-cli-venv"
pip3 install vcd-cli
pip3 install vcd-cli --upgrade

exit