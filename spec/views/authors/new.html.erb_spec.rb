require 'rails_helper'

describe "New author page", :type => :feature do
  
  it "should display 'New author'" do
    visit 'new_author'
    expect(page).to have_text("New author")
  end

  it "should have a first name field" do
	visit 'new_author'
	expect(page).to have_field("author_first_name")
  end

  it "should have a last name field" do
	visit 'new_author'
	expect(page).to have_field("author_last_name")
  end

  it "should have a homepage field" do
	visit 'new_author'
	expect(page).to have_field("author_homepage")
  end

  it "should have a create author button" do
	visit 'new_author'
	expect(page).to have_button("Create Author")
  end
end