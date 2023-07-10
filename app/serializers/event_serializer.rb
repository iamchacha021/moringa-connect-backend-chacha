class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :date, :formatted_time, :venue

  def formatted_time
    object.time.strftime("%I:%M %p")
  end
end
