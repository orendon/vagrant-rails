#!/bin/sh
# Original script on https://github.com/orendon/vagrant-rails

# load rbenv and shims
export RBENV_ROOT="${HOME}/.rbenv"
export PATH="${RBENV_ROOT}/bin:${PATH}"
export PATH="${RBENV_ROOT}/shims:${PATH}"

cd /vagrant
bundle install
rbenv rehash
sudo sudo -u postgres psql -1 -c "CREATE USER pgadmin WITH PASSWORD 'secret';"
sudo sudo -u postgres psql -1 -c "ALTER USER pgadmin WITH SUPERUSER;"
cp -R config/database.sample.yml config/database.yml
rake db:create
rake db:migrate
rake db:seed
