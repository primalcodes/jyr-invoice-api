FactoryBot.define do
  factory :invoice do
    payment_date { "2021-09-11" }
    description { "MyString" }
    payment_term { 1 }
    client_name { "MyString" }
    client_email { "MyString" }
    status { 1 }
  end
end
