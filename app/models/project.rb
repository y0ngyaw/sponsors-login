class Project < ApplicationRecord
	validates :title, presence: true, length: { maximum: 255 }
	validates :description, presence: true, length: { maximum: 255 }
	has_attached_file :documentation 
	validates_attachment :documentation, presence: true, 
		content_type: { content_type: "application/pdf" },
		size: { less_than: 10.megabytes }
	VALID_FILE_NAME = /pdf\z/
	validates_attachment_file_name :documentation, matches: VALID_FILE_NAME 

	
end
