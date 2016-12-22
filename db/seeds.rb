# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.delete_all
Clem = User.create!(email: "clemdelatang@gmail.com", password: "testtest")
Céline = User.create!(email: "celin.vincent@yahoo.fr", password: "testtest")
Jean = User.create!(email: "jean.valjean@me.fr", password: "testtest")
David = User.create!(email: "david.fincher@me.fr", password: "testtest")
Gaspard = User.create!(email: "gaspard.proust@me.fr", password: "testtest")

# Cook.delete_all
Cook_1 = Cook.create!(user: Clem, last_name:"TANGUY", first_name: "Clément", age: "40", bio: "Bon réchauffeur, devenu cordon bleu improvisateur")
Cook_2 = Cook.create!(user: Céline, last_name:"VINCENT", first_name: "Céline", age: "40", bio: "Autodidacte, j'ai appris à cuisine au fil de mes envies et pour faire plaisir. Chaque jour, je cuisine et emmène une part au travail. J'aimerais vous faire partager ma passion")
Cook_3 = Cook.create!(user: Jean, last_name:"VALJEAN", first_name: "Jean", age: "75", bio: "Encyclopédie de la cuisine romantique")
Cook_4 = Cook.create!(user: David, last_name:"FINCHER", first_name: "David", age: "53", bio: "Génie de la mise en scène culinaire")
Cook_5 = Cook.create!(user: Gaspard, last_name:"PROUST", first_name: "Gaspard", age: "38", bio: "Cynique des fourneaux")

# Dish.delete_all
Dish.create!(cook: Cook_1, name: "Poulet Roti", kind_of_dish: "Plat principal", speciality: "Terroir & Famille", description: "Poulet élevé en plein air, nourri avec une alimentation bio, rôti au four", veggie: "false", cooked: "true", be_reheated: "true", portion_size: "Moyenne (200-300g)", portion_count: "3", price: '8,50', exp_date: "12/11/2016 20:30:00", collect_date: "13/11/2016 12:00:00")
Dish.create!(cook: Cook_1, name: "Spaghetti bolognaise", kind_of_dish: "Plat principal", speciality: "Terroir & Famille", description: "Bolognaise maison sans viande, pleine de bons légumes", veggie: "true", cooked: "true", be_reheated: "true", portion_size: "Moyenne (200-300g)", portion_count: "1", price: '6,00', exp_date: "12/12/2016 20:30:00", collect_date: "13/12/2016 12:00:00")
Dish.create!(cook: Cook_2, name: "Tomates mozzarella", kind_of_dish: "Entrée", speciality: "Cuisines du monde", description: "Tomates du jardin bio, mozza burrata bio de Campanie", veggie: "true", cooked: "false", be_reheated: "false", portion_size: "Grande (>300g)", portion_count: "2", price: '5,00', exp_date: "12/10/2016 20:30:00", collect_date: "13/10/2016 12:00:00")
Dish.create!(cook: Cook_2, name: "Filet de boeuf en croûte", kind_of_dish: "Plat principal", speciality: "Gastronomique", description: "Viande tendre et moelleuse de chez Desnoyer dans une pâte maison délicatement feuilletée", veggie: "false", cooked: "true", be_reheated: "false", portion_size: "Petite (env. 150g)", portion_count: "4", price: '9,00', exp_date: "30/10/2016 22:30:00", collect_date: "13/11/2016 12:30:00")
Dish.create!(cook: Cook_2, name: "Moelleux au chocolat", kind_of_dish: "Dessert & Patisserie", speciality: "Gastronomique", description: "Moelleux au coeur fondant, cacao bio équitable de Madagascar", veggie: "true", cooked: "true", be_reheated: "true", portion_size: "Petite (env. 150g)", portion_count: "6", price: '4,50', exp_date: "30/11/2016 20:00:00", collect_date: "13/11/2016 13:00:00")

# Place.delete_all
Place.create!(full_address: "5 Rue Lavoisier", zip_code: "75008", city: "Paris", kind_of_place: "Domicile", reception_desk: "true")
Place.create!(full_address: "5 Rue Lavoisier", zip_code: "75008", city: "Paris", kind_of_place: "Domicile", reception_desk: "true")
Place.create!(full_address: "5 Rue Vivienne", zip_code: "75002", city: "Paris", kind_of_place: "Bureaux/Agence", reception_desk: "true")
Place.create!(full_address: "243 rue Saint-Honoré", zip_code: "75001", city: "Paris", kind_of_place: "Magasin/Restaurant", reception_desk: "true")
Place.create!(full_address: "43 rue Gabrie Lamé", zip_code: "75012", city: "Paris", kind_of_place: "Bureaux/Agence", reception_desk: "true")

# Speciality.delete_all
Speciality.create!(name: "Terroir & Famille", level: "Top Chef")
Speciality.create!(name: "Gastronomique", level: "Avancé")
Speciality.create!(name: "Terroir & Famille", level: "Avancé")
Speciality.create!(name: "Cuisines du monde", level: "Avancé")
Speciality.create!(name: "Bio & Diététique", level: "Amateur")

# CookPlace.delete_all
CookPlace.create!(cook_id: "1", place_id: "1")
CookPlace.create!(cook_id: "2", place_id: "2")
CookPlace.create!(cook_id: "3", place_id: "3")
CookPlace.create!(cook_id: "4", place_id: "4")
CookPlace.create!(cook_id: "5", place_id: "5")

# CookSpeciality.delete_all
CookSpeciality.create!(cook_id: "1", speciality_id: "1")
CookSpeciality.create!(cook_id: "2", speciality_id: "2")
CookSpeciality.create!(cook_id: "3", speciality_id: "3")
CookSpeciality.create!(cook_id: "4", speciality_id: "4")
CookSpeciality.create!(cook_id: "5", speciality_id: "5")

Order.delete_all

OrderStatus.delete_all
OrderStatus.create!(id: 1, name: "In Progress")
OrderStatus.create!(id: 2, name: "Placed")
OrderStatus.create!(id: 3, name: "Cancelled")
OrderStatus.create!(id: 4, name: "Paid")



