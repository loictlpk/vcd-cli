# VCD Automation Script

Ce dépôt contient des scripts shell pour automatiser certaines opérations sur une infrastructure VCD (VMware Cloud Director).

## Prérequis

- Bash (Linux/macOS)
- data folder contains .csv files
```bash
my vapp,myvm
```
- vars folder contains host.var & colors.var
```bash
server="vcd.server.test"
tenant="mybusiness"
```

## Installation

Avant toute utilisation, il est nécessaire d’installer les dépendances requises :

```bash
chmod +x *.sh
./install.sh
```

## Utilisation
```bash
./vcd.sh login
./vcd reboot <csv_path>
```
