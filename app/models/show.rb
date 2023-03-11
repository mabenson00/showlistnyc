class Show < ApplicationRecord
  has_one_attached :image

  belongs_to :venue
end
