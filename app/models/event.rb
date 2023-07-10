class Event < ApplicationRecord
    scope :latest, -> { order(created_at: :desc) }
end
