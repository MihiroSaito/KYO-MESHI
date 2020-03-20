class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group_date

  validates :comment, presence: true

  mount_uploader :image, ImageUploader
end
