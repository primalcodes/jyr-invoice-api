FactoryBot.define do
  factory :address do
    type { nil }
    street { "MyString" }
    city { "MyString" }
    state { "MyString" }
    post_code { "MyString" }
    country { "MyString" }
  end
end
