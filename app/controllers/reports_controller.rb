class ReportsController < ApplicationController

  before_action :authenticate_user!

  # RESTful routes #############################################################################

  # We want this route to return the reports for the logged in user
  def index

    # render :json => users.to_json(include: :reports)

    reports = current_user.reports
    # render :json => reports

    render :json => reports.to_json(include: :inputs)
  end

  def show
    report = Report.find(params[:id])
    render :json => report
  end

  # Non-RESTful routes #########################################################################



end
