# Intro

A slightly clean up vagrant scripts to setup a virtual machine. Uses ansible scripts instead of bash scripts. Also uses bento boxes.



# Prerequisites

1. Virtualbox
2. Vagrant.



# What it installs

1. Bento box. Ubuntu 16.10
2. Ansible.
3. Python 2 and 3.
4. Golang.
5. NVM and nodejs.
7. Some shell prompt.



# Misc notes

"ansible_local" seem to be the thing that made the differene in getting ansible scripts to work in windows 10. I remember trying "ansible" in the vagrantfile and didn't have any luck with that.


# Links

https://github.com/chef/bento