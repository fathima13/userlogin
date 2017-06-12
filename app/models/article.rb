class Article < ApplicationRecord	
	mount_uploader :image, ImageUploader
	belongs_to :user

	def previous
		user.articles.where("id < ?", self.id).last
	end

	def next
		user.articles.where("id > ?", id).first
	end
end
