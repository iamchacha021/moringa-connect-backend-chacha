class Event < ApplicationRecord
    has_one_attached :image
    scope :latest, -> { order(created_at: :desc) }

    def img_url
        Rails.application.routes.url_helpers.url_for(image) if image.attached?
    end
end
