class ReportsController < ApplicationController

  # Show all reports for user with id = params[:id]
  # Route: get 'users/:id/reports'=> 'users#show_user_reports'
  def show_user_reports
    reports = Report.where("user_id = ?", params[:id])
    # reports = User.find(params[:id]).reports

    render :json => reports
  end

  # Route: get 'users/:id/reports/:r_id'=> 'reports#show' # this a particular report for one user
  def show
    report = Report.find(params[:r_id])

    render :json => report
  end

end
