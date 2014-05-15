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

##Usage
Just download `Vagrantfile` on the root folder on your app, and run vagrant from there
```shell
wget https://github.com/orendon/vagrant-rails/raw/master/Vagrantfile
vagrant up
vagrant ssh
```

If needed, you can customize `config.vm.provision` script according to your app specifics, in such case just run `vagrant provision` in order to reload all scripts.

You can run `vagrant -h` to see some handy vagrant commands

###Requirements
It requires vagrant and virtualbox to be previously installed

>Tested using Vagrant 1.6.2 and Virtualbox 4.3.10

###TODO
Add chef/puppet equivalents
