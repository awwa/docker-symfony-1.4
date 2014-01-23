This Dockerfile is setup for symfony 1.4.x and sendgrid
you should change file below:

files/app.yml  
files/factories_yml.sh  
  change SENDGRID_USERNAME and SENDGRID_PASSWORD

files/index.php  
  change sender@sender@.com and recipient@recipient.com

after that execute ./build.sh and ./run.sh

run.sh start sshd. 
You can access to the container via ssh.
You need inspect IP address of the container.


