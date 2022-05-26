# frozen_string_literal: true

# Mailer for report
class ReportMailer < ApplicationMailer
  def send_created
    @greeting = 'Hi'

    mail to: ENV['TARGET_EMAIL_SENDGRID']
  end
end
