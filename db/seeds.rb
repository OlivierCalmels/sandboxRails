# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.delete_all

Dog.create(name: 'Nala', motto: 'Born to be wild')
Dog.create(name: 'Alex', motto: 'Calm as can be')
Dog.create(name: 'Leroy', motto: 'Life of the pawty')
Dog.create(name: 'Belle', motto: 'Miss Independent')
Dog.create(name: 'Caroline', motto: "Plus ultra")
Dog.create(name: 'Dania', motto: "À cœur vaillant, rien d'impossible")
Dog.create(name: 'Matthieu', motto: "Qui s'y frotte s'y pique")
Dog.create(name: 'Olivier', motto: 'Vive le code!')