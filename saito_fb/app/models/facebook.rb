class Facebook < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name,:content,:image, presence: true
end
