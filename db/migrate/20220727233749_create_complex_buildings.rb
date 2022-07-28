class CreateComplexBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :complex_buildings do |t|
      t.string :owner
      t.string :owner_email
      t.string :address
      t.integer :units
      t.integer :sqmt
      t.decimal :price

      t.timestamps
    end
  end
end
