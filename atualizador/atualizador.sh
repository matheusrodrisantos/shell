#!/bin/bash
echo "Bem vindo ao atualizador ! "
echo "1° Vamos logar com o administrador"
echo "Digite a senha do usuario administrador"

echo "---------------------------------------"
echo "Vamos começar a atualizar os programas"
sudo apt-get -m update
echo "---------------------------------------"
echo "Vamos começar a atualizar o sistema"
sudo apt-get -m upgrade
