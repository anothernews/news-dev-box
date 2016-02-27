#! /bin/bash

echo "install rvm"
curl -sSL https://get.rvm.io | bash
source /home/vagrant/.rvm/scripts/rvm
rvm install 2.3.0
gem update --system
gem install bundler
rvm rvmrc warning ignore allGemfiles
