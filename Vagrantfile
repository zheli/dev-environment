# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "dev-env"
  config.vm.synced_folder "salt/roots", "/srv"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

#  config.vm.provision :salt do |salt|
#    salt.minion_config = "salt/minion.conf"
#    salt.verbose = true
#    salt.minion_key = "salt/keys/salt.pem"
#    salt.minion_pub = "salt/keys/salt.pub"
#    salt.run_highstate = true
#    salt.install_type = "stable"
#  end
  config.vm.provision 'shell', inline: <<-SHELL
    mkdir -p '/root/.ssh'
    printf "%s\n" "#{File.read("#{ENV['HOME']}/.ssh/id_rsa.pub")}" >> /root/.ssh/authorized_keys
    printf "%s\n" "#{File.read("#{ENV['HOME']}/.ssh/id_rsa.pub")}" >> /home/vagrant/.ssh/authorized_keys
    chown -R vagrant:vagrant /home/vagrant/.ssh
  SHELL
end
