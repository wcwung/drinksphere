class Pin < ActiveRecord::Base
	belongs_to :user

	# :default_url => "/images/img.png", image incase an image is missing
	has_attached_file :image, :styles => {:small => "200x200", :medium => "300x300", :thumb=> "100x100" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	validates :image, presence: true
	validates :description, presence: true
end
