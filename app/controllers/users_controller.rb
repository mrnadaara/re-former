class UsersController < ApplicationController
  include UsersHelper
  def new
    @user=User.new
  end

  def edit
    @user=User.find(params[:id])
  end
  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      respond_to new_user_path
    else
      render :edit
    end
  end
  def create
    # @user = User.new(user_name: params[:user_name], email: params[:email], password: params[:password])
    @user= User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end
end
