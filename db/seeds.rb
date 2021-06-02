for i in 1..8
  Apartment.create!(
    floor: Faker::Number.number(digits: 1),
    number: Faker::Number.number(digits: 3),
  ).user.create!(
    [
      {
        name:       Faker::Name.name,
        email:      Faker::Internet.email,
        phone:      Faker::PhoneNumber.phone_number,
        password:   Faker::Name.name
      }
    ]
  )
end