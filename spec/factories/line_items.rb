FactoryBot.define do
  factory :line_item do
    invoice { nil }
    name { "MyString" }
    quantity { 1 }
    price { 1 }
  end
end
