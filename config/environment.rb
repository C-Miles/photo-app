# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#   address: 'smtp.sendgrid.net',
#   port: '587',
#   authentication: :plain,
#   user_name: ENV['SENDGRID_USERNMAE'],
#   password: ENV['SENDGRID_PASSWORD'],
#   domain: 'heroku.com',
#   enable_starttls_auto: true
# }

ActionMailer::Base.smtp_settings = {
  user_name: 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  password: Rails.application.credentials.dig(:sendgrid, :api_key), # This is the secret sendgrid API key which was issued during API key creation
  # domain: 'heroku.com',
  domain: 'miles-photo-app.herokuapp.com',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
