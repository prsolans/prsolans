# What's Installed

+ Ubuntu Precise (12.04)
+ Mysql
+ Php
+ Phpmyadmin
+ Git
+ PEAR

## Prerequisites
1. Vagrant (http://vagrantup.com)
2. VirtualBox (https://www.virtualbox.org/)
3. Puppet (http://docs.puppetlabs.com/guides/installation.html)
4. Git (http://git-scm.com/book/en/Getting-Started-Installing-Git)
4. Github (account required, with access to mergeworld account)

## Getting Started

1. Clone this repo
3. From the project folder, run the command `vagrant up`
4. Edit your local host file with this entry `192.168.50.5 fsml.staging.mergeworld.com` - this may take 3-5 minutes
5. Access the site at fsml.staging.mergeworld.com - At this point, you should see a basic "It works!" HTML page.

## Working with the environment

Your local `htdocs` folder is synced with the servers `var/www` folder, so you can edit using your local text editors and software and see the changes immediately on the server.

1. Navigate to htdocs folder 
2. Clone the required Firestone repo into the local folder - `git clone https://github.com/mergeworld/firestonebpco.com.git`
2. Move content up to main htdocs folder `rm index.html && mv firestonebpco.com/* . && rm -rf firestonebpco.com`

## Install Database 
This assumes you have downloaded the database file, and copied it into `htdocs/db`

### Recommended method - SSH
2. SSH into the server to install the DB by running the command `vagrant ssh`
3. Navigate to database folder `cd /var/www/db/`
4. Access mysql by running the command `mysql -u root -pvagrant`
5. Load the DB by typing `source FILENAME.sql`

### Alternate method - MySQL Workbench
Need to test if this method will work with large source files

## SSH

You can SSH onto the server itself by running the command `vagrant ssh`

## A Few Details

* If you're needing a password (for anything - including mysql, it should be `vagrant`)


