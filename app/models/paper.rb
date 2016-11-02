class Paper < ActiveRecord::Base
	has_and_belongs_to_many :authors
	validates :name, :venue, :year, :authors, presence: true
	def author_one
	end
	def author_two
	end
end
