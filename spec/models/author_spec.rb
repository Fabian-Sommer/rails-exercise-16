require 'rails_helper'

RSpec.describe Author, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "Given an author a with first name 'Alan' and last name 'Turing'" do
	it "then a.name returns 'Alan Turing'" do
		author = Author.create!
		author.first_name = "Alan"
		author.last_name = "Turing"
		expect(author.name).to eq("Alan Turing")
	end
  end
end
