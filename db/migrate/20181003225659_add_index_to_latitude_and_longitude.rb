class AddIndexToLatitudeAndLongitude < ActiveRecord::Migration[5.2]
  def change
    add_index :basic_health_units, [:latitude, :longitude]
  end
end
