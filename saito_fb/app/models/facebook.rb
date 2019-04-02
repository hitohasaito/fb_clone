class Facebook < ApplicationRecord
  mount_uploader :image, ImageUploader
end
