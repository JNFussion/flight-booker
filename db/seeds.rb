# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.create([{code: "ATL"}, {code: "PEK"}, {code: "LAX"}, {code: "DXB"}, {code: "HND"}, {code: "ORD"}, {code: "LHR"}, {code: "PVG"}, {code: "CDG"}, {code: "DFW"} ])
Flight.create([{from_airport_id: 1, to_airport_id: 10, departure_date: DateTime.new(2021, 5, 6, 15, 49), duration: 9300}, 
  {from_airport_id: 10, to_airport_id: 1, departure_date: DateTime.new(2021, 5, 6, 18, 1), duration: 12960},
  {from_airport_id: 1, to_airport_id: 3, departure_date: DateTime.new(2021, 3, 31, 8, 30), duration: 17580},
  {from_airport_id: 2, to_airport_id: 8, departure_date: DateTime.new(2021, 3, 31, 8, 0), duration: 8100},
  {from_airport_id: 8, to_airport_id: 2, departure_date: DateTime.new(2021, 4, 4, 16, 10), duration: 8700},
  {from_airport_id: 3, to_airport_id: 4, departure_date: DateTime.new(2021, 3, 31, 16, 40), duration: 57000},
  {from_airport_id: 4, to_airport_id: 3, departure_date: DateTime.new(2021, 4, 30, 8, 55), duration: 58800},
  {from_airport_id: 5, to_airport_id: 7, departure_date: DateTime.new(2021, 3, 31, 1, 55), duration: 45000},
  {from_airport_id: 7, to_airport_id: 5, departure_date: DateTime.new(2021, 5, 21, 15, 30), duration: 41100},
  {from_airport_id: 6, to_airport_id: 10, departure_date: DateTime.new(2021, 6, 1, 6, 40), duration: 9480},
  {from_airport_id: 10, to_airport_id: 6, departure_date: DateTime.new(2021, 7, 31, 20, 30), duration: 8460},
  {from_airport_id: 9, to_airport_id: 7, departure_date: DateTime.new(2021, 3, 23, 16, 10), duration: 5100},
  {from_airport_id: 7, to_airport_id: 9, departure_date: DateTime.new(2021, 4, 14, 6, 15), duration: 4500},
  {from_airport_id: 1, to_airport_id: 10, departure_date: DateTime.new(2021, 5, 6, 8, 10), duration: 9240}])