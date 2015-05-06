FactoryGirl.define do
  factory :podcast do
    name   Faker::Company.name
    feed   Faker::Internet.url
    url    Faker::Internet.url
    active "1"
  end
end