require 'spec_helper'

describe User do
  let (:valid_attributes){
    {
      email: "user@example.com",
      password: "password1234",
      admin: false
    }
  }
  
  context "validations" do
    let(:user) { User.new(valid_attributes) }
    
    before do
      User.create(valid_attributes)
    end
    
    it "requires an email" do
      expect(user).to validate_presence_of(:email)
    end
    
    it "requires a unique email" do
      expect(user).to validate_uniqueness_of(:email)
    end
    
    it "requires a unique email (case insensitive)" do
      user.email = "User@exAmpLe.coM"
    end
    
    it "requires the email address to look like an email" do
      user.email = "Cory"
      expect(user).to_not be_valid
    end
  end
  describe "#downcase_email" do
    it "downcases an email before saving" do
      user = User.new(valid_attributes)
      user.email = "USER@exAmpLe.coM"
      expect(user.save).to be_truthy
      expect(user.email).to eq("user@example.com")
    end
  end
end