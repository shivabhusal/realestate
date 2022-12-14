class CreateCommercialUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :commercial_units do |t|
      t.string :owner
      t.string :owner_email
      t.string :address
      t.integer :shops
      t.integer :sqmt
      t.integer :parking
      t.decimal :price

      t.timestamps
    end
  end
end
