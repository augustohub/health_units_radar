FactoryBot.define do
  factory :basic_health_unit do
    name 'AMBULATORIO SANTA ANA'
    address 'LINHA BOA ESPERANCA, DOBRADA'
    city 'Sertão Santana'
    phone '5134951206'
    latitude '-30.4481470584861'
    longitude '-51.6436600685105'
    unit_size_score 3
    adaptation_for_seniors_score 1
    medical_equipment_score 2
    medicine_score 2
  end
end
