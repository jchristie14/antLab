class Article < ApplicationRecord

	has_many :comments, dependent: :destroy
	validates :title, presence: true
	mount_uploader :image, ImageUploader

end
