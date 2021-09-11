1.upto(10) do |i|
  inv = Invoice.new(
    description: Faker::Hipster.sentence(word_count: 4),
    payment_date: Date.today + 30.days,
    client_name: Faker::Company.name,
    client_email: Faker::Internet.email(domain: 'example')
  )

  1.upto([1, 2, 3].sample).each do
    inv.line_items << LineItem.new(name: Faker::Marketing.buzzwords, quantity: [1, 2, 3].sample, price: [100,200,300,400].sample)
  end

  inv.sender_address = SenderAddress.new(
    street: Faker::Address.street_address,
    city: Faker::Address.city,
    post_code: Faker::Address.postcode,
    country: Faker::Address.country
  )
  inv.client_address = ClientAddress.new(
    street: Faker::Address.street_address,
    city: Faker::Address.city,
    post_code: Faker::Address.postcode,
    country: Faker::Address.country
  )

  inv.save!
end