class Category < ApplicationRecord
	has_many :notes
	validates :name, presence: true, length: { in: 3..20 }
end
