class ReportsController < ApplicationController

  # Show all reports for user with id = params[:id]
  # Route: get 'users/:id/reports'=> 'users#show_user_reports'
  def show_user_reports
    reports = Report.where("user_id = ?", params[:id])

    render :json => reports
  end

end
