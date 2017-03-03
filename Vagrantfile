# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  # bento Pre-built Boxes ( https://github.com/chef/bento )
  # Docker v1.8 から RHEL/CentOS6 はサポート外
  config.vm.box = "bento/centos-7.3"
  config.vm.box_url = "https://atlas.hashicorp.com/bento/boxes/centos-7.3/versions/2.3.2/providers/virtualbox.box"

  config.vm.define "master" do |master|
    # 固定IP
    master.vm.network "private_network", ip: "192.168.34.10"
    # ホストゲスト間で同期するディレクトリ
    master.vm.synced_folder 'mnt/master', '/mnt/host', create: true
    # 初回起動時に1回のみ実行するスクリプト
    master.vm.provision :shell, :path => "script/master_bootstrap.sh"
  end

#  config.vm.define "web01" do |web01|
#    web01.vm.network "private_network", ip: "192.168.34.11"
#    web01.vm.synced_folder 'mnt/web01', '/mnt/host', create: true
#    web01.vm.provision :shell, :path => "script/web00_bootstrap.sh"
#  end

#  config.vm.define "web02" do |web02|
#    web02.vm.network "private_network", ip: "192.168.34.12"
#    web02.vm.synced_folder 'mnt/web02', '/mnt/host', create: true
#    web02.vm.provision :shell, :path => "script/web00_bootstrap.sh"
#  end

end
