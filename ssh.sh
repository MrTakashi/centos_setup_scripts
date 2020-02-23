#!/bin/bash

# Generate new ssh-key
echo "$(tput setaf 2)[Generate new ssh-key]$(tput sgr 0)"
echo "$(tput setaf 3)$ ssh-keygen$(tput sgr 0)"
ssh-keygen

echo "$(tput setaf 3)$ ls -al ~/.ssh/$(tput sgr 0)"
ls -al ~/.ssh/

# Add private key to localhost
echo "$(tput setaf 2)[Add private key to localhost]$(tput sgr 0)"
echo "$(tput setaf 3)$ ssh-copy-id root@localhost$(tput sgr 0)"
ssh-copy-id root@localhost

# Print private key (now you can copy it from screen)
echo "$(tput setaf 2)[Print private key (now you can copy it from screen)]$(tput sgr 0)"
echo "$(tput setaf 3)$ cat ~/.ssh/id_rsa$(tput sgr 0)"
cat ~/.ssh/id_rsa

############ PuTTY setup ############
### Convert private key to putty format with puttygen.exe
# File \ Load Private Key \
# choose *.*
# choose id_rsa

# add comment: %usually I use server or vps name%

# save "save private key"
# id_rsa.ppk

### PuTTY session setup
##Session
# Host Name or IP %%
# Port            ssh port    
# Saved Session   %session name server (IP) user key%

##Window
# Columns				160
# Rows				36

## Connection
# Data
# Auto-login username	mk
# SSH \ Auth
# Private key file %PATH\id_rsa.ppk%

#Session => Save


### Now we can connect to our server with key using PuTTY
