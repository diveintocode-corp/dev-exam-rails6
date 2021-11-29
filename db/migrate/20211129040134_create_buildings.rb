class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :building_name
      t.integer :rent
      t.string :address
      t.integer :age_of_building
      t.text :remark

      t.timestamps
    end
  end
end
