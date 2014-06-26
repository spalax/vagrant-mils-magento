vagrant-mils-magento
====================

Mil's common configuration for vagrant oriented for projects built with Magento 1.7 +

## Description

Primary goal of this repository it is provide configured virtual host for magento ecommerce platform. It is does not provide magento source it is provide only environment where you can install magento platform. 

## QuickStart

### Requirements

Before we will start be sure that you have in your system worked NFS server and installed vagrant.

for Ubuntu you can run:
``` sudo apt-get install nfs-kernel-server && vagrant plugin install vagrant-hostsupdater ```

for Mac everything what you need:
``` vagrant plugin install vagrant-hostsupdater ```

Lets imagine you have magento source on path /var/www/magento and you have sql schema for magento with sample data on path /var/www/magento/schema/common.sql

``` cd /var/www/magento ```

Usually i use this repo as submodule of my project run under git, so i will describe how to configure it in the way which more suitable for me.

```
git submodule add https://github.com/spalax/vagrant-mils-common.git .puppet
cd .puppet
git submodule init && git submodule update
cd /var/www/magento
```
Now we should create symlink to vagrantfile and copy some configuration file
```
ln -s .puppet/Vagrantfile
cp .puppet/Vagrantfilerc.rb.example .puppet/.Vagrantfilerc.rb
```
Now we should open copied .Vagrantfilerc.rb and set appropriate values for some configuration options.

You might set any valid ip which you want, but please check if it is has not been used.
```
     MY_IP = "12.35.45.32"
```

That is why we have installed host_updater plugin
```
MY_HOSTNAME = "my_host_name.in"
```

It is must be some unique name  
```
MY_VBOX_NAME = "template-wordpress-box"
```

If this option will be "1" then you will be able to connect to your Virtual machine via public network (it will bridge your public interface with VM).
```
MY_PUBLIC_NETWORK_ENABLED = 0
```
Optional parameter to configure available memory for VM

``` MY_VBOX_MEMORY = 1024 ```
