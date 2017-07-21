class UsersController < ApplicationController

  def index
    test_var = "test test test!"
    render :json => test_var
  end

end
