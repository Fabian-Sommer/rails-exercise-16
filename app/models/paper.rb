class Paper < ActiveRecord::Base
	has_and_belongs_to_many :authors
	validates :title, :venue, presence: true
	validates :year, presence: true, numericality: {only_integer: true}
	scope :yearIs, ->(givenYear) {where("year = ?", givenYear)}
end
