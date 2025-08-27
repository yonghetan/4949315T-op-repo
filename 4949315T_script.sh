#!/bin/bash
apt-get update
puppet resource package git ensure=present
puppet resource package apache2 ensure=present
puppet resource service apache2 ensure=running
puppet resource file /operate/4949315T/ ensure=absent force=true
puppet resource file /operate/4949315T/ ensure=directory
cd /operate/4949315T/
git clone https://github.com/yonghetan/4949315T-op-repo.git
cp -p /operate/4949315T/4949315T-op-repo/index-op-4949315T.html /var/www/html/index.html
