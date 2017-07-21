class UsersController < ApplicationController

  def index
    users = User.all
    # render :json => "You're looking for all users, huh? Well, they ain't here!"
    render :json => users
  end

  def show
    user = User.find(params[:id])
    # render :json => "You're looking for user with id "+ params[:id]+". Well, he ain't here neither. Go on, scram!"
    render :json => user
  end

end
