# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant box available: https://app.vagrantup.com/bento/boxes/ubuntu-20.04

#BASE_IMAGE = "bento/ubuntu-20.04"
BASE_IMAGE = "bento/ubuntu-22.04"

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
# Create a master node
  config.vm.define "master" do |subconfig|
    subconfig.vm.box = BASE_IMAGE
    subconfig.vm.hostname = "master"
    subconfig.vm.network :private_network, ip: "192.168.33.10"
    subconfig.vm.provision :shell, path: "master-bootstrap.sh"
  end
  
  config.ssh.forward_agent = true
  config.vm.boot_timeout = 600
end
