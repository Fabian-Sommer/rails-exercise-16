require 'rails_helper'

describe "New author page", :type => :feature do
  
  it "should display 'New author'" do
    visit 'new_author'
    expect(page).to have_text("New author")
  end

  it "should have a first name field" do
	visit 'new_author'
	expect(page).to have_field("first name")
  end

  it "should have a last name field" do
	visit 'new_author'
	expect(page).to have_field("last name")
  end

  it "should have a homepage field" do
	visit 'new_author'
	expect(page).to have_field("homepage")
  end
end