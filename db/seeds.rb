puts 'clearning db'

Audition.destroy_all
Role.destroy_all

puts 'db cleared'

puts 'creating roles'

r1 = Role.create(character_name: 'Bob' )
r2 = Role.create(character_name: 'Alice' )
r3 = Role.create(character_name: 'Mia' )

puts 'roles have been created'

puts 'creating auditions'
a1 = Audition.create(actor: "Brad Pitt", location: "Chicago", phone: 1234567890, role: r1)
a2 = Audition.create(actor: "Val Kilmer", location: "Atlanta", phone: 1234567890, role: r2)
a3 = Audition.create(actor: "Christian Bale", location: "New York", phone: 1234567890, role: r3)
a4 = Audition.create(actor: "Mark Normand", location: "Los Angeles", phone: 1234567890, role: r3, hired: true)
a5 = Audition.create(actor: "Vin Diesel", location: "Kansas City", phone: 1234567890, role: r2)
a6 = Audition.create(actor: "Joe List", location: "Miami", phone: 1234567890, role: r1, hired: true)
puts 'auditions created'

puts 'all good in the hood'
