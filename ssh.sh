#!/bin/bash

# Generate new ssh-key
echo "$(tput setaf 2)[Generate new ssh-key]$(tput sgr 0)"
echo "$(tput setaf 3)$ ssh-keygen -b 2048 -t rsa -f $HOME/.ssh/id_rsa -q -N ""$(tput sgr 0)"
ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""

echo "$(tput setaf 3)$ ls -al ~/.ssh/$(tput sgr 0)"
ls -al ~/.ssh/

# Add private key to localhost
echo "$(tput setaf 2)[Add private key to localhost]$(tput sgr 0)"
echo "$(tput setaf 3)$ ssh-copy-id root@localhost$(tput sgr 0)"
ssh-copy-id root@localhost

# Print private key (now you can copy it from screen)
echo "$(tput setaf 2)[Print private key (now you can copy it from screen]$(tput sgr 0)"
echo "$(tput setaf 3)$ cat ~/.ssh/id_rsa$(tput sgr 0)"
cat ~/.ssh/id_rsa

echo "$(tput setaf 2)[Instruction for PuTTY]$"
echo "$(tput setaf 4)############ PuTTY setup ############"
echo "### Convert private key to putty format with puttygen.exe"
echo "# File -> Load private key"
echo "# choose All Files (*.*)"
echo "# choose id_rsa"

echo "# add comment: %usually I use server or vps name%"

echo "# Save private key"
echo "# id_rsa.ppk"

echo "### PuTTY session setup"
echo "## Session"
echo "# Host Name or IP %%"
echo "# Port            ssh port"
echo "# Saved Session   %session name server (IP) user key%"

echo "## Window"
echo "# Columns  160"
echo "# Rows      36"

echo "## Connection"
echo "# Data"
echo "# Auto-login username	%your user name%"
echo "# SSH -> Auth"
echo "# Private key file %PATH\id_rsa.ppk%"

echo "#Session -> Save"

echo "### Now we can connect to our server with key using PuTTY$(tput sgr 0)"
