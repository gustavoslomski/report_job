# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/report_mailer
class ReportMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/report_mailer/send_created
  def send_created
    ReportMailer.send_created
  end
end
