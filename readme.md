Beebop Corporate SBCUI Repository - Fork of Siremis Web Management Interface 
http://siremis.asipto.com/

### Web Management Interface for Kamailio SIP Server - RELEASE 1.0 

Compatible with Kamailio: v5.2.x and v5.3.x

  * https://www.kamailio.org

### Install

To install you need firstly to install Kamalio. This is the install for v5.4 on debian

https://kamailio.org/docs/tutorials/5.4.x/kamailio-install-guide-deb/

Make sure you have installed the kamalio database

sudo kamdbctl create

Then install apache2

sudo apt-get update
sudo apt-get install apache2
sudo a2enmod rewrite
sudo systemctl restart apache2

Then move the files in 
/var/www/beebopsbc/apache2-conf
into /etc/httpd/sites-available and symbolic link into /etc/httpd/sites-enabled

Then install php

sudo apt-get install php libapache2-mod-php php-{mysql,gd,curl,xml,pear}
sudo pear install XML_RPC2

Then move this project into place under /var/www/beebopsbc 

make sure the right user/group is set for apache.

Then create the database siremis with the credentials. 

Then run this script on the siremis databse you just created /var/www/beebopsbc/sql/beebop.sql

In the /var/www/beebopsbc/beebopsbc folder is Config.xml. 
This is the credentials for both kamalio and siremis databases.

To install and deploy using Docker, see:

  * misc/docker/README.md
  * on github: https://github.com/Beebop-Systems-LLC/BeebopSBCUI/tree/master/misc/docker

Details about licenses of the external components distributed within this project:

  * PHPOpenBiz and Cubi frameworks included in SIREMIS tarball are licensed under BSD Style-License (https://github.com/phpOpenbiz/openbiz-cubi)
  * echarts library used to build charts in new versions (SIREMIS v5.0.0 or greater) is licensed under BSD-3-Clause (https://github.com/ecomfe/echarts)
  * smarty (v2.6.x) php templates library is licensed under LGPL (https://github.com/smarty-php/smarty/)
