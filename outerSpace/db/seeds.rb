# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ship.destroy_all
System.destroy_all
system1 = System.create!(name:"milkiway1",radius:10)
system2 = System.create!(name:"kepler",radius:11)
system3 = System.create!(name:"rock",radius:100)

ship1 = Ship.create!(name:"Enterprice",velocity:1000,system_id:system1.id)
ship1 = Ship.create!(name:"Houston",velocity:2000,system_id:system1.id)
ship1 = Ship.create!(name:"Austin",velocity:4000,system_id:system2.id)
ship1 = Ship.create!(name:"Dallas",velocity:5000,system_id:system3.id)
ship1 = Ship.create!(name:"San Antonio",velocity:8000,system_id:system3.id)
