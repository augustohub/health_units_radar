module V1
  class BasicHealthUnitSerializer < ActiveModel::Serializer
    attributes :id, :name, :address, :city
  end
end
