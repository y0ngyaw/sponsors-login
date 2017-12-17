class Project < ApplicationRecord
	validates :title, presence: true, length: { maximum: 255 }
	validates :description, presence: true, length: { maximum: 255 }
end
