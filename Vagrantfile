# info:
# Link Utili:
#  - http://ntraft.com/installing-gdb-on-os-x-mavericks/
# - vagrant plugin install vagrant-vbguest
#
VAGRANTFILE_API_VERSION = "2"

require 'yaml'
current_dir    = File.dirname(File.expand_path(__FILE__))
configs        = YAML.load_file("#{current_dir}/config.yaml")
vagrant_config = configs['configs']

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.ssh.username= "vagrant"
  config.ssh.password= "vagrant"

  config.vm.box = vagrant_config['box']
  #config.vm.box_url = vagrant_config['box_url']
  
  config.vm.network :forwarded_port, guest: 80, host: vagrant_config['http_portforward']
  config.vm.network :private_network, ip: vagrant_config['private_ip']
  
  config.vm.synced_folder "trunk", "/home/vagrant/", create: true, owner: "vagrant", group: "vagrant", mount_options: ["dmode=777,fmode=777"]
 
  config.vm.provider :virtualbox do |vb|
     vb.cpus = "#{vagrant_config['cpus']}"
     vb.memory = "#{vagrant_config['memory']}"
  end
 
 config.vm.provision :shell, path: "bootstrap.sh"
end