# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version.
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  #
  # Vagrant box.
  #
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.hostname = "dev.local"

  #
  # Port mapping
  #
  config.vm.network "forwarded_port", guest: 80, host: 8080

  #
  # Private network
  #
  config.vm.network "private_network", ip: "192.168.10.40"

  #
  # Public network
  #
  # config.vm.network "public_network"

  #
  # Sync folder
  #
  # config.vm.synced_folder "../data", "/vagrant_data"

  # 
  # VM config
  #
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  #
  # Provision with Puppet
  #
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "default.pp"
    puppet.options = ["--verbose"]
    #puppet.module_path = "modules"
  end

end
