# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
    :address  => 'smtp_settings.sendgrid.net',
    :port => '587',
    :authenction => :plain,
    :user_name => ENV['SENGRID_USERNAME'],
    :password => ENV['SENGRID_PASSWORD'],
    :domain => 'heroku.com',
    :enable_startstls_auto => true
}