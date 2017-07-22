class InputsController < ApplicationController

  # Show all inputs for user with id = params[:id] and report with r_id = params[:r_id]
  # Route: get 'users/:id/reports/:r_id/inputs' => 'inputs#show_report_inputs'

  def show_report_inputs
    inputs = Input.where("report_id = ?", params[:r_id])
    # reports = User.find(params[:id]).reports
    # inputs = Report.find(params[:r_id]).inputs

    render :json => inputs
  end

  # Route: get 'users/:id/reports/:r_id'=> 'reports#show' # this a particular report for one user
  # def show
  #   report = Report.find(params[:r_id])
  #
  #   render :json => report
  # end

end
