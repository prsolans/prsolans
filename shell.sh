#!/bin/bash

set -x
set -e

ln -svf /vagrant/files/.bash_profile /home/vagrant/.bash_profile
ln -svf /vagrant/files/.bash_prompt /home/vagrant/.bash_prompt
ln -svf /vagrant/files/.gitignore /home/vagrant/.gitignore
ln -svf /vagrant/files/.gitconfig /home/vagrant/.gitconfig
ln -svf /vagrant/files/.aliases /home/vagrant/.aliases