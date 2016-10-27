class Author < ActiveRecord::Base
	def first_name=(value)
		@first_name = value
	end
	def last_name=(value)
		@last_name = value
	end
	def name
		@first_name + " " + @last_name
	end
end
