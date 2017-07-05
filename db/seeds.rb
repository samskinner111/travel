# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
destinations = Destination.create([
  {city: 'Santiago', country: 'Chile', description: 'The capital of Chile 
    and the gateway to its mountains, glaciers and desert.'},
  {city: 'Vancouver', country: 'Canada', description: 'Welcome to a 
    near Paradise!'},
  {city: 'Moscow', country: 'Russia', description: 'Cold winters and cold shoulders!'}])