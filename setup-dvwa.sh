#!/bin/bash

# DVWA Setup Script for Ubuntu VM
# Run as root on the Ubuntu target VM.
# Assumes LAMP stack prerequisites.

echo "Setting up DVWA on Ubuntu..."

# Install dependencies
apt update && apt install -y apache2 mysql-server php php-mysql php-gd libapache2-mod-php git

# Secure MySQL
mysql_secure_installation <<EOF

y
your_mysql_root_password  # Set a strong password
your_mysql_root_password
y
y
y
y
EOF

# Clone and configure DVWA
git clone https://github.com/digininja/DVWA.git /var/www/html/DVWA
cd /var/www/html/DVWA/config/
cp config.inc.php.dist config.inc.php
sed -i "s/'user' => 'root',/'user' => 'root',/" config.inc.php
sed -i "s/'password' => '',/'password' => 'your_mysql_root_password',/" config.inc.php
sed -i "s/'database' => 'dvwa',/'database' => 'dvwa',/" config.inc.php

# Create DVWA database
mysql -u root -p'your_mysql_root_password' -e "CREATE DATABASE dvwa;"

# Permissions and restart
chown -R www-data:www-data /var/www/html/DVWA/
service apache2 restart
service mysql restart

echo "DVWA setup complete! Access at http://<your-ip>/DVWA/setup.php"
echo "Create/Reset DB in browser, then set security to 'Low' for testing."
