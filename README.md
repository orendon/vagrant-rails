#vagrant-rails

A Ubuntu 14.04 install aimed for Ruby on Rails development

This box start with a basic Ubuntu 14.04 (trusty) based on phusion/ubuntu-14.04-amd64 and it adds the following packages aimed for rails development

- rbenv and ruby-build
- ruby 2.1.2 with bundler
- Git 1.9.1
- Postgresql 9.3 and SQLite
- Node.js
- PhantomJs 1.9.7
- Qt for Capybara Webkit
- ImageMagick
- Redis and Memcached

>Tested using Vagrant 1.6.2 and Virtualbox 4.3.10

#Usage
Just clone or add this files to your project and run `vagrant up` (it will take
a while)

Grab some coffee and then run `vagrant ssh` to access your rails box

##Requirements
It requires vagrant and virtualbox to be previously installed

###TODO
Add chef/puppet equivalents

