class Listing < ActiveRecord::Base
	if Rails.env.development?
		has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default_image.jpg"
		validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
	else
		has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default_image.jpg",
					  	   :storage => :dropbox,
    				       :dropbox_credentials => Rails.root.join("config/dropbox.yml")
		validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
	end

	validates :name, :description, :proce, presence: true
	validates :proce, numericality: {greater_than: 0}
	validates_attachment_presence :image

	belongs_to :user
    
end


