# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Room.create([
    {number: "101", room_type: 0, price: 50000, status: 0}, # 0: Suite
    {number: "102", room_type: 1, price: 75000, status: 1}, # 1: Nicer Suite
    {number: "103", room_type: 0, price: 50000, status: 0},
    {number: "201", room_type: 1, price: 75000, status: 0},
    {number: "202", room_type: 1, price: 75000, status: 1},
    {number: "203", room_type: 1, price: 75000, status: 0},
    {number: "301", room_type: 2, price: 100000, status: 0} # 2: Penthouse
])


Guest.create([
    {first_name: "Pedro", last_name: "Ariztia", email: "pariztia@miuandes.com", phone: "956871326", document_id: "20569846-9"},
    {first_name: "Andres", last_name: "Howard", email: "ahoward@miuandes.com", phone: "975362987", document_id: "15869521-K"},
    {first_name: "Monica", last_name: "Ossa", email: "mossa@miuandes.com", phone: "999956227", document_id: "20523697-5"}
])


Reservation.create([
    {code: "RES001", guest_id: 961, room_id: 101, check_in: Date.today, check_out: Date.today + 3, status: 0, adults: 2, children: 0}, # subtotal nights = 150.000
    {code: "RES002", guest_id: 962, room_id: 203, check_in: Date.today + 1, check_out: Date.today + 4, status: 1, adults: 1, children: 1}, # sbt_nights: 300.000
    {code: "RES003", guest_id: 963, room_id: 103, check_in: Date.today, check_out: Date.today + 2, status: 0, adults: 2, children: 2} # sbt_nights: 200.000
])


Service.create([
    {name: "Breakfast", price: 10000, is_active: true},
    {name: "Airport Pickup", price: 25000, is_active: true},
    {name: "Laundry", price: 5000, is_active: true}
])


ServiceUsage.create([
    {reservation_id: 961, service_id: 001, quantity: 2, used_at: DateTime.now, note: "Breakfast included"}, # sbt_services: 20.000
    {reservation_id: 962, service_id: 002, quantity: 2, used_at: DateTime.now, note: "Laundry for 2 days"}, # sbt_services: 10.000
    {reservation_id: 963, service_id: 002, quantity: 1, used_at: DateTime.now, note: "Pickup from Airport"} # sbt_services: 25.000
])


Invoice.create([
    {reservation_id: 961, nights_subtotal: 150000, services_subtotal: 20000, tax: 32300, total: 202300, issued_at: DateTime.now, status: "issued"},
    {reservation_id: 962, nights_subtotal: 300000, services_subtotal: 10000, tax: 58900, total: 368900, issued_at: DateTime.now, status: "pending"},
    {reservation_id: 963, nights_subtotal: 200000, services_subtotal: 25000, tax: 42750, total: 267750, issued_at: DateTime.now, status: "issued"}
])
