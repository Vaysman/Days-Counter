class CrossingDaysController < ApplicationController
  before_filter :login_required
    
  def create
    @crossing_day = CrossingDay.new(:date_of => params[:date].split('.').reverse.join('-'))
    @crossing_day.in_est = !!params[:to_estonia]
    if @crossing_day.save
      flash[:notice] = "Successfully created crossing day."
      current_user.crossing_days << @crossing_day
    else
      flash[:error] = "Invalid date."
    end
    render :show
  end
  
  def destroy
    @crossing_day = CrossingDay.find(params[:id])
    @crossing_day.destroy
    flash[:notice] = "Successfully destroyed crossing day."
    redirect_to crossing_days_url
  end
  
  def destroy_multiple
    CrossingDay.destroy(params[:crossing_day_ids].collect(&:split).flatten)
    flash[:notice] = "Successfully destroyed crossing days."
    redirect_to root_path
  end
  
  def index
    @crossing_days = current_user.crossing_days.ordered_by_date
  end
end
