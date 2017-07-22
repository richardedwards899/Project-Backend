class InputsController < ApplicationController

  # RESTful routes #############################################################################

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
