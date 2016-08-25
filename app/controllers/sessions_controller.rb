class SessionsController < ApplicationController
  before_filter :find_model

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      @user = User.new
      @errors = ["email or password incorrect"]
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def find_model
    @model = Sessions.find(params[:id]) if params[:id]
  end
end
