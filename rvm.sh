#! /bin/bash

echo 'source /vagrant/.promptcolor' >>~/.bashrc
echo 'export JAVA_HOME=/usr/lib/jvm/default-java' >>~/.bashrc

echo "install rvm"
curl -sSL https://get.rvm.io | bash  >/dev/null 2>&1
source /home/vagrant/.rvm/scripts/rvm

rvm install 2.3.0  >/dev/null 2>&1
gem update --system >/dev/null 2>&1
gem install bundler >/dev/null 2>&1

rvm rvmrc warning ignore allGemfiles
