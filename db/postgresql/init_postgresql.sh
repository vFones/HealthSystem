#!/bin/bash
sudo -u postgres dropdb healthsystem
sudo -u postgres dropuser dbahealthsystem
sudo -u postgres dropuser paziente
sudo -u postgres dropuser medico

#   Create user
sudo -u postgres createuser dbahealthsystem -d -E
sudo -u postgres createdb healthsystem -O dbahealthsystem
sudo -i -u postgres psql -c "alter USER dbahealthsystem WITH PASSWORD 'passwddba'"

sudo -u postgres createuser medico -D -E
sudo -i -u postgres psql -c "alter USER medico WITH PASSWORD 'passwdmedico'"

sudo -u postgres createuser paziente -D -E
sudo -i -u postgres psql -c "alter USER paziente WITH PASSWORD 'passwdpaziente'"

sudo -u postgres psql -d healthsystem -U dbahealthsystem -W -f sqlfiles/postgres_ddl.sql
sudo -u postgres psql -d healthsystem -U dbahealthsystem -W -f sqlfiles/postgres_dcl.sql
sudo -u postgres psql -d healthsystem -U dbahealthsystem -W -f sqlfiles/postgres_dml.sql
