cat << EOF > /etc/apache2/httpd.conf
# Be sure to only have this line once in your configuration
NameVirtualHost *:8080

# This is the configuration for your project
Listen *:8080

<VirtualHost *:8080>
  DocumentRoot "/home/sfproject/web"
  DirectoryIndex index.php
  <Directory "/home/sfproject/web">
    AllowOverride All
    Allow from All
  </Directory>

  Alias /sf /home/sfproject/lib/vendor/symfony/data/web/sf
  <Directory "/home/sfproject/lib/vendor/symfony/data/web/sf">
    AllowOverride All
    Allow from All
  </Directory>
</VirtualHost>
EOF
