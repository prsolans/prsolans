# WORDPRESS LAMP DEV SERVER
+ Ubuntu Precise (12.04)
+ Apache2
+ Mysql
+ Php
+ PhpMyAdmin
+ Git

## Prerequisites
+ Vagrant (http://vagrantup.com)
+ VirtualBox (https://www.virtualbox.org/)
+ Puppet (http://docs.puppetlabs.com/guides/installation.html)

## Getting Started

1. Clone this repo into a local project folder
3. From the project folder, run the command `vagrant up --provision` - this may take 3-5 minutes (NOTE: The first time you `vagrant up` may take 5-10 minutes extra to download the image for the Ubuntu installation)
4. Open your browser to http://localhost:8080

## Working with the environment

To log in to the local Wordpress installation:

`http://localhost:8080/wp-admin/` the username is `admin`, the password is `vagrant`.

You can access phpMyAdmin:

`http://localhost:8080/phpmyadmin/` with username `root`, password `vagrant`.


## Edit files on your local machine
Running `vagrant up` will create a `wordpress` folder within your local project folder. This folder is synced to the `/vagrant/wordpress/` folder on the virtual machine. Any files you edit locally will be immediately available for review on the server.

## Edit files on the server via SSH
You can SSH onto the server itself by running the command `vagrant ssh`

2. SSH into the server to install the DB by running the command `vagrant ssh`
3. Navigate to the root folder `cd /vagrant/wordpress/`
4. Edit files using either VIM or NANO using the following commands:
+ VIM - `sudo vi FILENAME.html`
+ NANO - `sudo nano FILENAME.html`

## Access the database

### MySQL Workbench
You can access the VM database using Workbench with the following settings:
1. Connection Method: Stnadard TCP/IP over SSH
2. SSH Hostname: 192.168.50.99
3. SSH Username/Password: vagrant/vagrant
4. MySQL Hostname: localhost 
5. MySQL Username/Password: root/vagrant

### PhpMyAdmin
1. Navigate in your browser to http://wordpress.mergeworld.com/phpmyadmin
2. Username/Password: root/vagrant

### SSH
2. SSH into the server to install the DB by running the command `vagrant ssh`
4. Access mysql by running the command `mysql -u root -pvagrant`

## Notes
* If you need a password (for anything - including mysql, it should be `vagrant`)
* `vagrant suspend` - This command will put your local vm to sleep
* `vagrant halt` - This will shut off your local vm
* `vagrant destroy` - This will remove the vm completely and require rebuilding from scratch




