class CreateProperties < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
    create view all_properties as
      select id, owner, address, sqmt, price, floors, air_cond, rooms, 'House' as kind, null as parking, null as shops, null as units, created_at, updated_at from houses
      union
      select id, owner, address, sqmt, price, null as floors, null as air_cond, null as rooms,  'CommercialUnit' as kind, parking, shops, null as units,  created_at, updated_at from commercial_units
      union
      select id, owner, address, sqmt, price, null as floors, null as air_cond, null as rooms, 'ComplexBuilding' as kind,  null as parking, null as shops, units,  created_at, updated_at from complex_buildings
    SQL
  end

  def down
    execute <<-SQL
    drop view all_properties
    SQL
  end
end
