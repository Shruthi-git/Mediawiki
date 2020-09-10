#!/bin/bash

# Script to create database 'wikidatabase', user 'wiki' and table structure required for wikimedia app

# You can provide appropriate password by replacing 'password' with your password after downloading the script

mysql -u root << EOM

create user 'wiki'@'localhost' identified by 'password';

create database wikidatabase;

grant all privileges on wikidatabase.* to 'wiki'@'localhost';

EOF
