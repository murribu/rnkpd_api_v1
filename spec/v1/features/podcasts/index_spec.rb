require 'spec_helper'

describe "Listing podcasts" do
  it "shows something" do
    visit "/v1/podcasts"
    expect(page).to_not eq('')
  end
end