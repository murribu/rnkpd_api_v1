require 'spec_helper'

describe Podcast do
  let (:podcast){ FactoryGirl.build(:podcast) }
  
  it "should save podcast" do
    expect(podcast).to_not be_nil
  end
    
  it "requires a unique url" do
    expect(podcast).to validate_uniqueness_of(:feed)
  end
end