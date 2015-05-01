require 'spec_helper'

describe "Listing users" do
  it "shows something" do
    visit "/v1/users"
    expect(page).to_not eq('')
  end
end