# -*- mode: ruby -*-
# vi: set ft=ruby :

# Verify whether required plugins are installed.
required_plugins = [ "vagrant-disksize" ]
required_plugins.each do |plugin|
  if not Vagrant.has_plugin?(plugin)
    raise "The vagrant plugin #{plugin} is required. Please run `vagrant plugin install #{plugin}`"
  end
end

Vagrant.configure("2") do |config|
  config.vm.box_check_update = false
  config.disksize.size = "50GB"

  $num_instances = 1
  (1..$num_instances).each do |i|
    config.vm.define "vbox#{i}" do |node|
      node.vm.box = "ubuntu/jammy"
      node.vm.hostname = "vbox#{i}"
      # Ranges: 192.168.58.0/21
      ip = "192.168.58.#{i+10}"
      node.vm.network "private_network", ip: ip
      node.vm.provider "virtualbox" do |vb|
        vb.memory = "8192"
        vb.cpus = 8
        vb.name = "vbox#{i}"
      end
      node.vm.provision "shell", path: "install.sh"
    end
  end
end

