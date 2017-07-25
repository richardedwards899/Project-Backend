class ReportsController < ApplicationController

  before_action :authenticate_user!

  # RESTful routes #############################################################################

  # We want this route to return the reports for the logged in user
  def index
    reports = current_user.reports
    render :json => reports
  end

  def show
    report = Report.find(params[:id])
    render :json => report
  end

  # Non-RESTful routes #########################################################################



end
