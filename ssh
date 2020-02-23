#!/bin/bash

# Generate new ssh-key
ssh-keygen

ls -al ~/.ssh/

# Add private key to localhost
ssh-copy-id root@localhost

# Print private (now you can copy it from screen)
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
