class UsersController < ApplicationController
  def index
  end

  def create
    @user = User.create(user_params)
    @count = time
    if @user.valid?
      flash[:name] = "Thanks for submitting this form! Yoou have submitted this form #{@count} times now"
    end
    redirect_to '/result'
  end

  def show
    @user = User.last
    render 'result'
  end

  def time
    if session[:counter].nil?
      session[:counter] = 0
    end
      session[:counter] += 1
  end


  private
  def user_params
    params.require(:user).permit(:name,:location,:language,:comment)
  end
end
