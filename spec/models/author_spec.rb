require 'rails_helper'

RSpec.describe Author, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "Given an author a with first name 'Alan' and last name 'Turing'" do
	it "then a.name returns 'Alan Turing'" do
		author = Author.create(first_name: "Alan", last_name: "Turing")
		expect(author.name).to eq("Alan Turing")
	end
  end
  
  describe "An author" do
	it "should always have a first name" do
		expect(Author.create(first_name: nil).valid?).to eq(false)
	end
	it "should always have a last name" do
		expect(Author.create(last_name: nil).valid?).to eq(false)
	end
  end
  
end
