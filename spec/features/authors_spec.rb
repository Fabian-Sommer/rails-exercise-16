require 'rails_helper'

describe "Authors index page", :type => :feature do
  
  it "should display 'Listing authors'" do
    visit 'authors#index'
    expect(page).to have_text("Listing authors")
  end
end