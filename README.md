# VCD Automation Script

Ce dépôt contient des scripts shell pour automatiser certaines opérations sur une infrastructure VCD (VMware Cloud Director).

## Prerequisites

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

```bash
chmod +x *.sh
./install.sh
```

## Use

```bash
./vcd.sh login
./vcd reboot <csv_path>
```
