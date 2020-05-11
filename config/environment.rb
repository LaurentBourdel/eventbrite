# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :user_name => ENV['solartech971'],
    :password => ENV['Laurent29'],
    :domain => 'https://www.solartech971.com',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }

#ActionMailer::Base.smtp_settings =   {
#    :address            => 'smtp.gmail.com',
#    :port               => 587,
#    :domain             => 'gmail.com', #you can also use google.com
#    :authentication     => :plain,
#    :user_name          => ENV['GMAIL_LOGIN'],
#    :password           => ENV['GMAIL_PWD']
#  }