class Blog < ApplicationRecord
  validates :content, presence: true, length: { in: 1..140 }
  mount_uploader :image, ImageUploader
  belongs_to :user
end
