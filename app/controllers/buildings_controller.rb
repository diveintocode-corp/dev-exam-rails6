class BuildingsController < ApplicationController

  def index 
    @buildings = Building.all
  end
  
  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      redirect_to buildings_path ,notice: '新規物件を登録しました'
    else
      render :new 
    end
    
  end
  
  private
  def building_params 
    params.require(:building).permit(:building_name,:rent,:address,:age_of_building,:remark)
  end
end
