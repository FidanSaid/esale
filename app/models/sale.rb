class Sale < ApplicationRecord
	  mount_uploader :file_upload, FileUploader

	  has_many :assets
	  belongs_to :user
	  belongs_to :category

	  geocoded_by :address_map
        after_validation :geocode
    
end
