Vagrant.configure("2") do |config|
   config.ssh.username   = 'root'
  config.ssh.password   = 'root'
  config.vm.provider "docker" do |d|
    d.build_dir = "."
     d.has_ssh  = true

     config.vm.network "forwarded_port", guest: 8080, host: 7000, host_ip: "127.0.0.1", auto_correct: true
     
  end
end