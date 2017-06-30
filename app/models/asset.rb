class Asset < ApplicationRecord
	belongs_to :sale
   mount_uploader :file, FileUploader
end
