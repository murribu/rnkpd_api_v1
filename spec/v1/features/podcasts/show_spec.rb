require 'spec_helper'

describe "Showing one podcast" do
  it "shows feed info" do
    visit "/v1/podcasts/3"
    expect(page).to have_content("feed")
  end
end