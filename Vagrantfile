# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "phusion/ubuntu-14.04-amd64"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provision :shell, path: "script/vagrant_bootstrap.sh", privileged: false
  config.vm.provision :shell, path: "script/app_specifics.sh", privileged: false
end
