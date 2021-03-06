class UsersController < ApplicationController

  # Before you do anything, make sure the user is authenticated!
  before_action :authenticate_user!

  # RESTful routes #############################################################################

  def index
    # user = current_user
    # render :json => user
    render json: current_user

    # render :json => users.to_json(include: :reports)
  end

  def show
    user = User.find(params[:id])
    render :json => user
  end

  # Non-RESTful routes #########################################################################

  # Show all reports for a user. Corresponds to: GET 'users/:id/reports' => 'users#show_user_reports'
  def show_user_reports
    reports = User.find(params[:id]).reports
    render :json => reports
  end

  # Show a particular report for one user. Corresponds to: GET 'users/:id/reports/:r_id' => 'users#show_report'
  def show_report
    report = User.find(params[:id]).reports.find(params[:r_id])
    render :json => report
  end

  # Show all inputs for a particular report. Corresponds to: GET 'users/:id/reports/:r_id/inputs' => 'users#show_report_inputs'
  def show_report_inputs
    inputs = User.find(params[:id]).reports.find(params[:r_id]).inputs
    render :json => inputs
  end

# Show one input for a particular report. Corresponds to: GET 'users/:id/reports/:r_id/inputs/:i_id' => 'users#show_report_input'
  def show_report_input
    input = User.find(params[:id]).reports.find(params[:r_id]).inputs.find(params[:i_id])
    render :json => input
  end

# Set one input for a particular report to a value. Corresponds to:
# PUT 'users/:id/reports/:r_id/inputs/:i_id/:value' => 'users#set_input_value'
  def set_input_value
    input = User.find(params[:id]).reports.find(params[:r_id]).inputs.find(params[:i_id])
    input.update(position: params[:value])
    render :json => input
  end

end
