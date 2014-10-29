# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


################ Sample Places ################
chipotle = Place.create! creator_id: 1, description: "\"It's pronounced 'Chip-po-tlay'.\"" user_id: 1, name: "Chipotle", address: "233 W Lake St", phone: "(312) 263-6230", website: "http://chipotle.com"