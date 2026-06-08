#!/bin/bash
# Installazione K9s
echo "export TERM=xterm-256color" >> ~/.bashrc
source ~/.bashrc
mkdir $HOME/downloads
cd $HOME/downloads
wget https://github.com/derailed/k9s/releases/latest/download/k9s_linux_amd64.deb &&  apt install ./k9s_linux_amd64.deb &&  rm k9s_linux_amd64.deb