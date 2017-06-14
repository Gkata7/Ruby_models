class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
  end

  def create
    Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
    redirect_to '/'
  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id]).update(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
    puts @dojo
    redirect_to '/'
  end

  def destroy
    @dojo = Dojo.find(params[:id]).destroy
    redirect_to '/'
  end
end
