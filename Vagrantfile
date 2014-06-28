# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  #
  # Vagrant box.
  #
  config.vm.box = "hashicorp/precise32"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  #
  # Port mapping
  #
  config.vm.network "forwarded_port", guest: 80, host: 8080

  #
  # Private network
  #
  config.vm.network "private_network", ip: "192.168.1.240"

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
  # config.vm.provider "virtualbox" do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
  #   # Use VBoxManage to customize the VM. For example to change memory:
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # end

  #
  # Provision with Puppet
  #
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "default.pp"
    puppet.module_path = "modules"
  end

end
