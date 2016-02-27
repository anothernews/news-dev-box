#! /bin/bash

echo "init package manager..."
apt-get install -y software-properties-common
apt-get -y update && apt-get -y upgrade

sudo locale-gen en_US.UTF-8

apt-get -y install \
	build-essential \
        git \
	curl \
	wget \
	libsqlite3-dev \
	libpq-dev \
	nginx \
	nodejs \
	npm \
	redis-server \
	redis-tools \
	imagemagick

echo "install postgres"
apt-get -y install postgresql postgresql-contrib libpq-dev
sudo -u postgres createuser --superuser vagrant

echo 'source /vagrant/.promptcolor' >>~/.bashrc
