#!/usr/bin/env bash
set -euo pipefail

echo "Actualizando repositorios..."
sudo apt update

echo "Instalando OpenSSH Server..."
sudo apt install -y openssh-server

echo "Habilitando SSH como servicio del sistema..."
sudo systemctl enable ssh
sudo systemctl start ssh

echo "Estado del servicio SSH:"
sudo systemctl status ssh --no-pager || true

echo "Verificando instalación..."
sshd -V 2>&1 || ssh -V
