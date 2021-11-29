class Building < ApplicationRecord
  validates :building_name, presence: true
end
