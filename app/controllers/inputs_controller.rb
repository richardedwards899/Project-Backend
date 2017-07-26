class InputsController < ApplicationController

  # Before you do anything, make sure the user is authenticated!
  before_action :authenticate_user!

  # RESTful routes #############################################################################
  def update
    input = Input.find(params[:id])
    input.update(position: params[:value])
    render :json => input
  end

  def index
    inputs = Input.all
    render :json => inputs
  end

  def show
    input = Input.find(params[:id])
    render :json => input
  end

  # Non-RESTful routes #########################################################################



end
