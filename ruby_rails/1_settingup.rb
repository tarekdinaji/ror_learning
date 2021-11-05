#!/usr/bin/env ruby

# Following are steps for Ubuntu
# For Windows, you need to enable linux subsystem 
#.. then ruby and then follow the below instruction

# First of all we need ruby installed
# then we need to install rails using the following
#.. on terminal <gem install rails> 
# This will install rails

# Anytime we install something on ruby we need to use 
#.. the following command to update ruby environment
# command <rbenv rehash> 
# Once that is done we can check whether rails is
#.. properly installed or not using 
#.. <rails -v> 

# ================

# Database Installation
# Whenever we work with rails it is going to be working with
#.. some databases. That is why we need to install a DB

# Ruby is great with postgres, MySQL, SQLlite
# Since MySQL is easier to understand by the beginers
#.. we will use MySQL here

# to install mySQL we will use the following command
#.. <sudo apt install mysql-server mysql-client libmysqlclient-dev> 

# Once that is done we can check using the following command
#.. <sudo service mysql status> 
# If for some reason it is not running use the 
#..following command to start it
#.. <sudo service mysql start> 

# At the end we need to secure the installation
# Use <sudo mysql_secure_installation>
# This will prompt to install a password validator
# We will choose No so any other key than the Y
# Now it will ask us to add a password
# I used "1" as my password
# We will not want anonymous user
# Choose Y for root to login remotely
# Choose Y also for the test database removal
# Choose Y for reload privilage table

# Now check using the following command
#.. <mysql -u root -p>
# That above code may not work. 
# to fix that type 
# <sudo mysql -u root>

# This should allow you to enter MySQL becuase of using SUDO code
# Continue .....

# <USE mysql>
# <SELECT user,host,plugin FROM user;>
# It should display all the plugin for the root user
# We need to change auth_socket to the MySQL native password
# To change that enter
#.. For Windows <UPDATE user SET plugin='mysql_native_password' WHERE user=root;>
#.. For Ubuntu <UPDATE user SET plugin='caching_sha2_password' WHERE user='root';>
# Check with <SELECT user,host,plugin FROM user;>
# If the plugin is updated then use the following
#.. <FLUSH PRIVILEGES;>
# Next type in <quit;> to get out of MySQL

# Now type in <mysql -u root -p> 

# If you still expereince issues then go to 
# https://devanswers.co/how-to-reset-mysql-root-password-ubuntu/
# And update your password. 

# ================

# Now we need to install MySQL gem for ruby
#.. use <gem install mysql2> 

# It should get installed without any issue. 
# if any issue is faced go to rubygems.org and locate
#.. their gitub page where you will find support

# ================

# Installing JavaScript
# Ruby on Rails 6 uses Webpack to manage JavaScript
# In order to use all the different JavaScript frameworks
#.. we need to install Node.js 
#.. and Node.js requires Yarn so we will install that too

# use the following command to install JavaScript
# <curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash ->
# Once that is done use the following
#.. <sudo apt-get install -y nodejs> 
# Then <sudo apt-get install gcc g++ make> 
# Then <curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null> 
# Then <echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list>
# Finally <sudo apt-get update && sudo apt-get install yarn>

# ====================

# To run Ruby on rails we need a server such as 
# Apache 2, NGINX, these are robust but difficult to setup
# Ruby already has a server coming with it Its called Puma
 
# When working for a real life project we will use
#..Apache or NGINX but for now we will use Puma


# Thats all about setting up for Ruby on Rails
