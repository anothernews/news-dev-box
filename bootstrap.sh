#! /bin/bash

function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo "Initializing..."
apt-get install -y software-properties-common >/dev/null 2>&1
apt-get -y update >/dev/null 2>&1
apt-get -y upgrade >/dev/null 2>&1

install 'basic development tool' build-essential curl wget libsqlite3-dev libpq-dev

install Git git
install Nginx nginx
install Nodejs nodejs
install npm npm
install Redis redis-server redis-tools
install 'ImageMagick(Image processor)' imagemagick
install Java default-jre default-jdk

install PostgreSQL postgresql postgresql-contrib libpq-dev
sudo -u postgres createuser --superuser vagrant

echo 'installing heroku toolbelt'
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh

update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8
