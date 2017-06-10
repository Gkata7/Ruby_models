class RpgController < ApplicationController
  @@time = Time.now
  def index
    if session[:value].nil?
      session[:value] = 0
    end
    if session[:activites].nil?
      session[:activites] = []
    end
  end

  def farm
    @number = rand(10..20)
    puts @number
    session[:value] += @number
    puts session[:value]
    session[:activites] << "Earned #{@number} golds from the farm #{@@time}"
    redirect_to '/'
  end

  def cave
    @number = rand(5..10)
    puts @number
    session[:value] += @number
    puts session[:value]
    session[:activites] << "Earned #{@number} golds from the cave #{@@time}"
    redirect_to '/'
  end

  def house
    @number = rand(2..5)
    puts @number
    session[:value] += @number
    puts session[:value]
    session[:activites] << "Earned #{@number} golds from the house #{@@time}"
    redirect_to '/'
  end

  def casino
    @number = rand(-50..50)
    puts @number
    session[:value] += @number
    puts session[:value]
    if @number > 0
      session[:activites] << "Earned #{@number} gold from the casino #{@@time}"
    else
      session[:activites] << "Entered a casino and lost #{@number} golds...Ouch...#{@@time}"
    end
    redirect_to'/'
  end

  def clear
    session.clear
    redirect_to '/'
  end
end
