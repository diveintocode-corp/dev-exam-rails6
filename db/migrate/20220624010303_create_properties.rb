class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name null: false
      t.integer :price null: false
      t.string :address null: false
      t.integer :age null: false
      t.text :note

      t.timestamps
    end
  end
end
