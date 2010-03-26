class CrossingDaysController < ApplicationController
  before_filter :login_required
  
  def new
    @crossing_day = CrossingDay.new
  end
  
  def create
    @crossing_day = CrossingDay.new(params[:crossing_day])
    if @crossing_day.save
      flash[:notice] = "Successfully created crossing day."
      redirect_to crossing_days_url
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @crossing_day = CrossingDay.find(params[:id])
    @crossing_day.destroy
    flash[:notice] = "Successfully destroyed crossing day."
    redirect_to crossing_days_url
  end
  
  def index
#    @crossing_days = CrossingDay.all
    render :text => 'Hello'
  end

  def show
    
  end
end
