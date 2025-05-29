class Gallery < ApplicationRecord
  belongs_to  :user
  has_one_attached :cover_img
  has_many_attached :gallery_img
  validates :title, presence: true
end
