class Building < ApplicationRecord
  validates :building_name, presence: true
  validates :rent, numericality: true
  validates :address, presence: true
  validates :age_of_building, numericality: true
  validates :remark, length: {minimum: 1}, allow_blank: true 
  has_many :nearest_stations, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :all_blank
end
