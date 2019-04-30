class Facebook < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title,:content,:image, presence: true
  belongs_to:user
end
