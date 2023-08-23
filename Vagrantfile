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

  $num_instances = 3
  (1..$num_instances).each do |i|
    config.vm.define "vbox#{i}" do |node|
      node.vm.box = "ubuntu/jammy"
      node.vm.hostname = "vbox#{i}"
      node.vm.provider "virtualbox" do |vb|
        vb.memory = "4096"
        vb.cpus = 2
        vb.name = "vbox#{i}"
      end
      node.vm.provision "shell", path: "install.sh"
    end
  end
end

