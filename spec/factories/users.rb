FactoryBot.define do
  factory :user do
    email    { Faker::Internet.email }
    password { Faker::Internet.password }
    user_name { Faker::Name.name }
  end
end
