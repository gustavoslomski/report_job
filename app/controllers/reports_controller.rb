# frozen_string_literal: true

# Controller for Reports
class ReportsController < ApplicationController
  def index
    @reports = Dir['public/reports/*'].sort
  end

  def create
    ReportCreateJob.perform_later
    ReportMailer.send_created.deliver_later

    flash[:notice] = 'Estamos processando seu relatório \\o/'
    redirect_to '/reports'
  end
end
