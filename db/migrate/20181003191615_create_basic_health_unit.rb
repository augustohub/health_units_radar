class CreateBasicHealthUnit < ActiveRecord::Migration[5.2]
  def change
    create_table :basic_health_units do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone
      t.decimal :latitude,  precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.integer :unit_size_score
      t.integer :adaptation_for_seniors_score
      t.integer :medical_equipment_score
      t.integer :medicine_score

      t.timestamps
    end
  end
end
