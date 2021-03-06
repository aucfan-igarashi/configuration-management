#!/bin/bash
#
# created 2014/09/21


## clone ruby-build
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
###  ## check version ruby
rbenv install --list | grep -v "1.8.\|1.9.\|jruby\|rbx\|ree\|maglev\|mruby\|topaz"

echo 'install version (e.g. 2.1.5)'
read rbv

## install CRuby
rbenv install -v ${rbv}
## setting default ruby
rbenv global ${rbv}
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


