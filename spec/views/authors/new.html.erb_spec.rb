require 'rails_helper'

describe "New author page", :type => :feature do
  
  it "should display 'New author'" do
    visit 'author_new'
    expect(page).to have_text("New author")
  end

  it "should have a first name field" do
	visit 'author_new'
	expect(page).to have_field("authors_first_name")
  end

  it "should have a last name field" do
	visit 'author_new'
	expect(page).to have_field("authors_last_name")
  end

  it "should have a homepage field" do
	visit 'author_new'
	expect(page).to have_field("authors_homepage")
  end

  it "should have a create author button" do
	visit 'author_new'
	expect(page).to have_button("create author")
  end
end