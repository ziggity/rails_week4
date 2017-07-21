50.times do
  Business.create({
    title: Faker::Company.name,
    body: Faker::Lorem.sentence
    })
end
