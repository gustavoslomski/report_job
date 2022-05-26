# frozen_string_literal: true

# Job for create a report
class ReportCreateJob < ApplicationJob
  queue_as :reports

  def perform(*)
    sleep 8

    Dir.mkdir "#{Rails.root.join('public')}/reports" unless File.directory?("#{Rails.root.join('public')}/reports")
    code = (0...8).map { rand(65..90).chr }.join
    make_file code
  end

  def make_file(code)
    out_file = File.new("#{Rails.root.join('public')}/reports/report#{code}.html", 'w')
    out_file.puts("<p>Report - code: <b>#{code}</b></p>")
    out_file.puts('<hr>')
    out_file.puts('Sidekiq example')
    out_file.close
  end
end
