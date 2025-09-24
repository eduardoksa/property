class Property < ApplicationRecord
  has_many :photos, -> { order(:position) }, dependent: :destroy

  validates :name, presence: true

  def cover_photo
    photos[2]
  end
end
