#update system
sudo apt-get update

# install vim
sudo apt-get install -y vim

# cURL
apt-get install -y curl

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Mysql
# -----
# Ignore the post install questions
apt-get install -y mysql-server-5.5

# Git
# ---
apt-get install git-core

