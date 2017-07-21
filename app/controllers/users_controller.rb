class UsersController < ApplicationController

  def index
    # render :json => "You're looking for all users, huh? Well, they ain't here!"
    users = User.all
    render :json => users
  end

  def show
    # render :json => "You're looking for user with id "+ params[:id]+". Well, he ain't here neither. Go on, scram!"
    user = User.find(params[:id])
    render :json => user
  end

end
