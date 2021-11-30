class NearestStation < ApplicationRecord
  belongs_to :building
  validates :route_name, presence: true
  validates :station_name, presence: true
  validates :walking_minitues, numericality: true
end
