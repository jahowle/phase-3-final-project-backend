puts "🌱 Seeding spices..."


Neighbor.destroy_all
Location.destroy_all
Partner.destroy_all
Category.destroy_all
Need.destroy_all

10.times do
    Location.create(
        name: Faker::Address.city
    )
end


Category.create(
    name: "Housing"
)

Category.create(
    name: "Furnishings"
)

Category.create(
    name: "Transport"
)

Category.create(
    name: "Miscellaneous"
)

Category.create(
    name: "Bills"
)

Category.create(
    name: "Groceries"
)

Category.create(
    name: "Clothing"
)


5.times do
    Partner.create(
        name: ["Boys and Girls Club", "United Way", "Pink Daisy Project", "Share Fund, Inc", "Bridges Homeward"].sample,
        location_id: Location.pluck(:id).sample
    )
end

10.times do

    Neighbor.create(
        name: Faker::Name.name,
        bio: Faker::Lorem.paragraph,
        location_id: Location.pluck(:id).sample,
        partner_id: Partner.pluck(:id).sample
        )

end

30.times do
    Need.create(
        description: ["Help with food", "Help with bills", "Help with car", "Help with textbooks", "Help with medical", "Help with shelter", "Help with clothing", "Help with transport", "Help with furnishings", "Help with groceries"].sample,
        amount: rand(1..400),
        neighbor_id: Neighbor.pluck(:id).sample,
        category_id: Category.pluck(:id).sample
    )

end

puts "✅ Done seeding!"
