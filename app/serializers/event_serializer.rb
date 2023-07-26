class EventSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :image_url, :date, :time, :venue, :img_url
end
