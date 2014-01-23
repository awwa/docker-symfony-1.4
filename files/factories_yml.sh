cat << EOF >> /home/sfproject/apps/frontend/config/factories.yml
  mailer:
    class: sfMailer
    param: 
      logging: %SF_LOGGING_ENABLED%
      charset: %SF_CHARSET%
      delivery_strategy: realtime
      transport:
        class: Swift_SmtpTransport
        param:
          host: smtp.sendgrid.net
          port: 587
          encryption: ~
          username: SENDGRID_USERNAME
          password: SENDGRID_PASSWORD
EOF
