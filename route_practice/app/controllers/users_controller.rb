class UsersController < ApplicationController
  def index
    render text: "Hello Coding Dojo!"
  end

  def create
    render text: "Saying Hello!"
  end

  def new
    render text: "Saying Hello Joe!"
  end

  def edit
    url_for([new])
  end

  def count
    session[:count] ||=0
    render text: "You visited this url #{session[:count] += 1} time(s)"
  end

  def destroy
    reset_session
    render text: "Destroyed the Session!"
  end
end
