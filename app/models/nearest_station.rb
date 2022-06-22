class NearestStation < ApplicationRecord
  belongs_to :property, inverse_of: :nearest_stations

  validates :route_name, presence: true, on: :update
  validates :station_name, presence: true, on: :update
  validates :time_walk, presence: true, on: :update
end