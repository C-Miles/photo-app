# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'cw.miles121@gmail.com'
  layout 'mailer'
end
