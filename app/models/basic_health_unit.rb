# == Schema Info
#
# Table name: basic_health_units
#
#  id                            :integer(11)    not null, primary key
#  name                          :string
#  address                       :string
#  city                          :string
#  phone                         :string
#  latitude                      :decimal(precision: 10, scale: 6)
#  longitude                     :decimal(precision: 10, scale: 6)
#  unit_size_score               :integer(11)
#  adaptation_for_seniors_score  :integer(11)
#  medical_equipment_score       :integer(11)
#  medicine_score                :integer(11)
#

class BasicHealthUnit < ApplicationRecord

end
