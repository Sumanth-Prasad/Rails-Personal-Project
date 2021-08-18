class Note < ApplicationRecord
	belongs_to :user
	belongs_to :category
	validates :title, presence: true, length: { in: 3..25 }
	validates :content, presence: true, length: { minimum: 2 }
end
