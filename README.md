# What's Installed

+ Ubuntu Precise (12.04)
+ Mysql
+ Php
+ Phpmyadmin
+ Git
+ PEAR
+ Xdebug
+ PHPUnit
+ phploc
+ phpcpd
+ phpdcd
+ phpcs
+ phpdepend
+ phpmd
+ PHP_CodeBrowser

## Prerequisites
1. Vagrant (http://vagrantup.com)
2. VirtualBox (https://www.virtualbox.org/)
3. Puppet (http://docs.puppetlabs.com/guides/installation.html)
4. Github (account required, with access to mergeworld account)

## Getting Started

1. Clone the project
2. Create directory `htdocs` in project folder
3. Run the command `vagrant up`
4. Edit your local host file with this entry
      192.168.50.5 fsml.staging.mergeworld.com
5. Access the site at fsml.staging.mergeworld.com

## Working with the environment

Your local `htdocs` folder is synced with the servers `var/www` folder, so you can edit using your local text editors and software and see the changes immediately on the server.

1. Navigate to htdocs folder 
2. Clone the required Firestone repo into the local folder - `git clone https://github.com/mergeworld/firestonebpco.com.git`
2. Move content up to main htdocs folder `rm index.html && mv firestonebpco.com/* . && rm -rf firestonebpco.com`

## Install Database (Recommended)
This assumes you have downloaded the database file into the `htdocs/db` folder within the project

2. SSH into the server to install the DB by running the command `vagrant ssh`
3. Navigate to database folder `cd /var/www/db/`
4. Access mysql by running the command `mysql -u root -pvagrant`
5. Load the DB by typing `source FILENAME.sql`

# SSH

You can SSH onto the server itself by running the command `vagrant ssh`

## A Few Details

* If you're needing a password (for anything - including mysql, it should be `vagrant`)


