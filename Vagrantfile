# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

  config.vm.provider "docker" do |d|
    d.build_dir = "."
    d.has_ssh = true
    d.name = "atool-silexapache2"
  end
  config.ssh.port = 22

  config.vm.provision :shell, :path => "provisioning/manifests/bootstrap.sh"
  config.vm.network :forwarded_port, host: 8080, guest: 80

  config.vm.hostname = "localdev"
  config.vm.network :private_network, ip: "192.168.33.40"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "provisioning/manifests"
    puppet.manifest_file  = "site.pp"
    puppet.module_path = ["provisioning/manifests/modules"]
  end

end