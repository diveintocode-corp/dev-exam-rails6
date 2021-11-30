class AddBuildingRefToNearestStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :nearest_stations, :building, foreign_key: true
  end
end
