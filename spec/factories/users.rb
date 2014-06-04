# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Name"
    email "Email@email.com"
    password "password"
    password_confirmation "password"
    admin false
  end
end
