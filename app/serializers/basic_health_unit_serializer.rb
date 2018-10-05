class BasicHealthUnitSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :phone, :geocode, :scores
  
  def geocode
    {
      lat:  object.latitude,
      long: object.longitude
    }
  end
  
  def scores
    {
      size: object.size_score,
      adaptation_for_seniors: object.adaptation_for_seniors_score,
      medical_equipment: object.medical_equipment_score,
      medicine: object.medicine_score
    }
  end
end
