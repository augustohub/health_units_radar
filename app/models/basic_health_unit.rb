# frozen_string_literal: true

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
#  size_score                    :integer(11)
#  adaptation_for_seniors_score  :integer(11)
#  medical_equipment_score       :integer(11)
#  medicine_score                :integer(11)
#
class BasicHealthUnit < ApplicationRecord

  SCORE_TRANSLATION = {
    1 => 'Desempenho muito acima da média',
    2 => 'Desempenho acima da média',
    3 => 'Desempenho mediano ou  um pouco abaixo da média'
  }.freeze

  validates_presence_of :name, :address, :city, :phone, :latitude, :longitude,
                        :size_score, :adaptation_for_seniors_score,
                        :medical_equipment_score, :medicine_score

  acts_as_mappable lat_column_name: :latitude,
                   lng_column_name: :longitude

end
