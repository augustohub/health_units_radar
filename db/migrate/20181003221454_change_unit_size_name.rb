class ChangeUnitSizeName < ActiveRecord::Migration[5.2]
  def change
    rename_column :basic_health_units, :unit_size_score, :size_score
  end
end
