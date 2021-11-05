#!/usr/bin/env ruby

# In order to start configuring our project we need to configure
#.. the database option. 

# We need to update the Config/database.yml file
# basically we need to create a username and a password and crete the databases on MySQL

# There are three databases, under development, test and production section
# The default name is the convension so we should stick with it

# Creating the database on MySQL
# First step is to create the database (using the following command)
SHOW DATABASES;
CREATE DATABASES db_name;
# Next is to create a user/username and password on MySQL so that
#.. ROR can talk to the database using those information. 
SELECT host, user FROM mysql.user;
CREATE USER 'username'@'localhost'
IDENTIFIED BY 'password';
# The thrid step is to grant that user to use that database.
SHOW GRANTS FOR 'username'@'localhost';
GRANT ALL PRIVILEGES ON db_name.*
TO 'username'@'localhost';

#here is the actual codes line by line

# on command line, go to the project folder
# log into mysql using
<mysql -u root -p>
# it should ask for password and then log into mysql
SHOW DATABASES; # should show the existing databases
# To create the new database 
CREATE DATABASE simple_cms_development;
# To create the test database
CREATE DATABASE simple_cms_test;

# Create a new user for the project
CREATE USER 'rails_user'@'localhost' IDENTIFIED BY '1312';
# This will create a user "rails_user" 
# and the password for the user will be "1312"

# Grant previlages
# We need to grant that user some previlages
GRANT ALL PRIVILEGES ON simple_cms_development.* TO 'rails_user'@'localhost';

# We can check if the databases are created by following command
SHOW DATABASES 

# Checking if everything is ok
# now after exiting from the mysql we need to use the cd command to go
#..inside the simple_cms folder and use the following command
rails db:schema:dump

# if this creates a file under the DB folder then it is ok