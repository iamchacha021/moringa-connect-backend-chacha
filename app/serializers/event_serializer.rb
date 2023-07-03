class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :date, :time, :venue
end
