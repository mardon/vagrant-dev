#update system
# ------------
sudo apt-get update

# install vim
# -----------
sudo apt-get install -y vim

# install cURL
# -------------
apt-get install -y curl

# prepare for install mysql
# -------------------------
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Mysql
# -----
# Ignore the post install questions
apt-get install -y mysql-server-5.5

# Apache
# ------
# Install
apt-get install -y apache2
apt-get install -y libapache2-mod-php5

# PHP stuff
# ---------
# Command-Line Interpreter
apt-get install -y php5-cli
# MySQL database connections directly from PHP
apt-get install -y php5-mysql
# cURL is a library for getting files from FTP, GOPHER, HTTP server
apt-get install -y php5-curl
# Module for MCrypt functions in PHP
apt-get install -y php5-mcrypt

# Enable mod_rewrite
a2enmod rewrite
# Restart apache
service apache2 restart

# Git
# ---
apt-get install git-core

# Install Composer
# ----------------
curl -s https://getcomposer.org/installer | php
# Make Composer available globally
mv composer.phar /usr/local/bin/composer

# Install mailcatcher
# -------------------
 
sudo apt-get install ruby rubygems ruby-dev sqlite3 libsqlite3-dev
sudo gem install mailcatcher


