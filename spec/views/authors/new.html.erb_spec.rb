require 'rails_helper'

describe "New author page", :type => :feature do
  
  it "should display 'New author'" do
    visit 'new_author'
    expect(page).to have_text("New author")
  end
end