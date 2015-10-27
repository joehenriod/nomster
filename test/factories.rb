FactoryGirl.define do
  factory :comment do
    author "Gary Vaynerchuk"
    saying "I love people, and the hustle."
  end

  factory :user do
    sequence(:email) { |n| "person#{n}@example.com"}
      password "87654321"
      password_confirmation "87654321"
  end

  factory :place do
    name "Ye Ol' Tattoo Shop"
    address "101 N. Las Vegas Blvd."
    description "Check out my Dragons Bro!"
    latitude (36.170048)
    longitude (115.139744)
    association :user
  end

end