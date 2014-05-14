# -*- mode: ruby -*-
# vi: set ft=ruby :
# Original script on https://github.com/orendon/vagrant-rails

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "phusion/ubuntu-14.04-amd64"

  #Forward rails server port to your host machine
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  # install linux packages
  config.vm.provision :shell, path: "script/vagrant_bootstrap.sh", privileged: false

  # Does a bundle install and setup/create database (optional)
  config.vm.provision :shell, path: "script/app_specifics.sh", privileged: false

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
  #   # Use VBoxManage to customize the VM. For example to change memory:
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # end
end
