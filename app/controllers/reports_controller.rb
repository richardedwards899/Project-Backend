class ReportsController < ApplicationController

  # RESTful routes #############################################################################

  def index
    reports = Report.all
    render :json => reports
  end

  def show
    report = Report.find(params[:id])
    render :json => report
  end

  # Non-RESTful routes #########################################################################



end
