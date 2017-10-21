# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  #config.vm.box = "wholebits/ubuntu17.04-64"
  #config.vm.box = "bento/debian-9.1"
  config.vm.box = "bento/ubuntu-17.04"
  #config.vm.box = "bento/ubuntu-16.04"
  #config.vm.box_version = "2.3.7"

  # BENTO BOXES.
  # https://app.vagrantup.com/bento

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  #config.vm.network "forwarded_port", guest: 8888, host: 8888

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.11"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end



  # MY STUFF
  ############################################################################

  # guest. This is going to try to copy the iso and install it there.
  # might be better.
  # you might want to remove the install from the bash scripts.
  config.vbguest.auto_update = true
  # not sure if you need this...
  config.vbguest.no_install = false
  # do NOT download the iso file from a webserver
  config.vbguest.no_remote = false

  config.vm.provision "ansible_local" do |ansible|
    #ansible.playbook = "zzz/vmSetup/ansible/ver/minimal.yml"
    ansible.playbook = "zzz/vmSetup/ansible/ver/allProgLangs.yml"
  end

  config.vm.provider "virtualbox" do |v|
    #v.memory = 4096
    #v.cpus = 4
    v.memory = 2048
    v.cpus = 2
  end

  # @see: https://www.vagrantup.com/docs/vagrantfile/ssh_settings.html	
  config.ssh.insert_key = false
end
