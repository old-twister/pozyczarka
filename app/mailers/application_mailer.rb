# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'tomek@example.com'
  layout 'mailer'
end
