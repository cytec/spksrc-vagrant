# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # local package cache
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "chef/debian-7.6-i386"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"

  config.vm.synced_folder "packages/", "/home/vagrant/spksrc/packages", create: true

  config.vm.hostname = "spksrc"

end
