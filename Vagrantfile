Vagrant.configure("2") do |config|

  config.vm.define "ubuntu1604" do |box|
    box.vm.box = "ubuntu/xenial64"
  end

  config.vm.define "ubuntu1710" do |box|
    box.vm.box    = "ubuntu/artful64"
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end

  config.vm.synced_folder "alisw", "/alisw"
  config.vm.synced_folder "${HOME}/alidata", "/alidata"

  # Run Ansible from the Vagrant VM
  config.vm.provision "ansible_local" do |ansible|
    ansible.compatibility_mode="2.0"
    ansible.become = true
    ansible.playbook = "playbook.yml"
  end

  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y python-pip
  #   pip install alibuild
  # SHELL
end
