class BuildingsController < ApplicationController
  before_action :set_building, only: %i(show edit update destroy)
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

  def show
  end

  def edit
  end

  def update
    if @building.update(building_params)
      redirect_to buildings_path ,notice: '物件編集しました'
    else
      render :edit
    end
  end

  def destroy
    @building.destroy
    redirect_to buildings_path,notece: '物件を削除しました'
  end


  private 
  def set_building
    @building = Building.find(params[:id])
  end
  def building_params 
    params.require(:building).permit(
                                    :building_name,
                                    :rent,
                                    :address,
                                    :age_of_building, 
                                    :remark,
                                    nearest_stations_attributes:[
                                                        :route_name,
                                                        :station_name,
                                                        :walking_minitues])
  end
end