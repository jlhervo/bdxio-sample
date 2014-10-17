# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "private_network", ip: "192.168.33.10"

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  # Enable provisioning with Ansible
  config.vm.provision "ansible" do |ansible|
    ansible.playbook            = "provisioning/site.yml"
#    ansible.skip_tags           = ["app"]
    ansible.extra_vars          = {
      app_user: "vagrant",
      app_user_home: "/home/vagrant"
    }
  end

end
