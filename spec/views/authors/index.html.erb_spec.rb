require 'rails_helper'

RSpec.describe "Author index page", type: :view do
  it "should have a 'show' link" do
    have_link("show")
  end
end
