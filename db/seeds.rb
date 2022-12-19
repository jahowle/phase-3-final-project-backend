puts "🌱 Seeding spices..."


Neighbor.destroy_all


10.times do

    Neighbor.create(
        name: Faker::Name.name,
        bio: Faker::Lorem.paragraph,
        location_id: Location.pluck(:id).sample,
        partner_id: Partner.pluck(:id).sample
        )

end

puts "✅ Done seeding!"
