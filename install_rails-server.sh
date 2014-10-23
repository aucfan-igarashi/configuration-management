#!/bin/bash
#
# created 2014/09/21


###  # install basic web server
###  /bin/bash -x install_web-server.sh
###  echo 'sleep 20'
###  sleep 20

# install Ruby
## clone rbenb
cd 
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

## setting bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
## reload bash
source ~/.bash_profile

## clone ruby-build
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
###  ## check version ruby
###  rbenv install --list

## install CRuby
rbenv install -v 2.1.2
## setting default ruby
rbenv global 2.1.2
###  ## check ruby 
###  ruby -v
## optimization of gem
gem install rbenv-rehash


# intall rails
## checking version rails 
gem list rails --remote
## install rails 
gem install --no-ri --no-rdoc rails
## check version rails
rails -v

