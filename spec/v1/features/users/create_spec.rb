require 'spec_helper'

describe "Create users" do
  it "creates a user" do
    user = User.create()
    #puts user.to_yaml
    expect(user).to_not be_nil
  end
end