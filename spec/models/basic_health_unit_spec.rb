require 'rails_helper'

RSpec.describe BasicHealthUnit, type: :model do
  subject { create(:basic_health_unit) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    incomplete_subject = build(:basic_health_unit, name: nil)
    expect(incomplete_subject).to_not be_valid
  end

  it 'is not valid without a address' do
    incomplete_subject = build(:basic_health_unit, address: nil)
    expect(incomplete_subject).to_not be_valid
  end

  it 'is not valid without a city' do
    incomplete_subject = build(:basic_health_unit, city: nil)
    expect(incomplete_subject).to_not be_valid
  end

  it 'is not valid without a phone' do
    incomplete_subject = build(:basic_health_unit, phone: nil)
    expect(incomplete_subject).to_not be_valid
  end

  it 'is not valid without a latitude' do
    incomplete_subject = build(:basic_health_unit, latitude: nil)
    expect(incomplete_subject).to_not be_valid
  end

  it 'is not valid without a longitude' do
    incomplete_subject = build(:basic_health_unit, longitude: nil)
    expect(incomplete_subject).to_not be_valid
  end

  it 'is not valid without a size_score' do
    incomplete_subject = build(:basic_health_unit, size_score: nil)
    expect(incomplete_subject).to_not be_valid
  end

  it 'is not valid without a adaptation_for_seniors_score' do
    incomplete_subject = build(:basic_health_unit,
                               adaptation_for_seniors_score: nil)
    expect(incomplete_subject).to_not be_valid
  end

  it 'is not valid without a medical_equipment_score' do
    incomplete_subject = build(:basic_health_unit, medical_equipment_score: nil)
    expect(incomplete_subject).to_not be_valid
  end

  it 'is not valid without a medicine_score' do
    incomplete_subject = build(:basic_health_unit, medicine_score: nil)
    expect(incomplete_subject).to_not be_valid
  end

end
