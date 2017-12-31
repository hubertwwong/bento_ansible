#!/bin/bash

# calls other bash scripts to setup usage of virtualbox and vagrant so you dont have to remember.

# copy the bash files for git bash over.
# Copy this line out if you don't need this.
bash zzz/gitbash/copyBashConfigToRoot.bash

# Vagrant setup.
bash zzz/vmSetup/bash/vagrant/initVagrant.bash