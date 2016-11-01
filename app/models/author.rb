class Author < ActiveRecord::Base
	has_and_belongs_to_many :papers
	validates :first_name, :last_name, presence: true
	def first_name=(value)
		self[:first_name] = value
	end
	def last_name=(value)
		self[:last_name] = value
	end
	def name
		self[:first_name] + " " + self[:last_name]
	end
end
