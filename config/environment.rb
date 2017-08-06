# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
    :address  => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    # :user_name => ENV['SENGRID_USERNAME'],
    # :password => ENV['SENGRID_PASSWORD'],
    :apikey => ENV['SENDGRID_API_KEY'],
    :domain => 'heroku.com',
    :enable_startstls_auto => true
}