# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Adding Channels
sony = Channel.create(name: "Sony")
start_plus = Channel.create(name: "Star Plus")
zee = Channel.create(name: "Zee")

# Adding shows for sony
sony.shows.build(name: "Indion Idol", show_time: DateTime.now + 1.hours).save
sony.shows.build(name: "The Kapil Sharma Show", show_time: DateTime.now + 2.hours).save
sony.shows.build(name: "CID", show_time: DateTime.now + 1).save

# Adding shows for start-plus
start_plus.shows.build(name: "Nazar", show_time: DateTime.now + 1.hours).save
start_plus.shows.build(name: "Divya Drashti", show_time: DateTime.now - 2.hours).save
start_plus.shows.build(name: "Ishqbaaz", show_time: DateTime.now - 1.hours ).save

# Adding shows for zee
zee.shows.build(name: "SaReGaMaPa", show_time: DateTime.now - 1).save
zee.shows.build(name: "Little Champ", show_time: DateTime.now + 1.hours).save
zee.shows.build(name: "DID", show_time: DateTime.now - 1.hours ).save