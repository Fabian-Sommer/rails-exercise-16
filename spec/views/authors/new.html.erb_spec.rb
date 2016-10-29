require 'rails_helper'

describe "New author page", type: :view do
  
  it "should display 'New author'" do
    have_text("New author")
  end

  it "should have a first name field" do
	have_field("author_first_name")
  end

  it "should have a last name field" do
	have_field("author_last_name")
  end

  it "should have a homepage field" do
	have_field("author_homepage")
  end

  it "should have a create author button" do
	have_button("Create Author")
  end
  
end