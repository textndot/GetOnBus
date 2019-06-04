class ProgressController < ApplicationController
  def show
    @user = User.find(session[:user_id])
    @start = @user.start_date
    @end = @user.end_date
    @span = @end - @start
    @passed = Date.today - @start
    @progress = @passed.to_i * 100 / @span.to_i
    
    # if @process<20
    #   @progress = 1
    # elsif @process<40
    #   @progress = 2
    # elsif @process<60
    #   @progress = 3
    # elsif @process<80
    #   @progress = 4 
    # else
    #   @progress = 5
    # end
  end
end
