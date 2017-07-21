class UsersController < ApplicationController

  def index
    render :json => "You're looking for all users, huh? Well, they ain't here!"
  end

  def show
    render :json => "You're looking for user with id "+ params[:id]+". Well, he ain't here neither. Go on, scram!"
  end

end
