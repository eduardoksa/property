class Photo < ApplicationRecord
  belongs_to :property
  has_one_attached :file

  validates :file, presence: true
  validates :position, presence: true, numericality: { greater_than: 0 }
end
