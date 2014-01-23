# move to project root direcotry 
cd /home/sfproject

# configuring the Database
php /home/sfproject/lib/vendor/symfony/data/bin/symfony generate:project project_example

# configuring the Database
php /home/sfproject/lib/vendor/symfony/data/bin/symfony configure:database "mysql:host=localhost;dbname=dbname" root password

# Application Creation
php /home/sfproject/lib/vendor/symfony/data/bin/symfony generate:app frontend

# Directory Structure Rights
chmod 777 /home/sfproject/cache/ /home/sfproject/log/

