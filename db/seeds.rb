puts "Cleaning database"
User.destroy_all
Collection.destroy_all
Indicator.destroy_all
Field.destroy_all

puts "Creating users..."
marc = User.create(email: "marc@gmail.com", password: "password", username: "Marc")
camille = User.create(email: "camille@gmail.com", password: "password", username: "Camille")
puts "Users created!"

puts "Creating collects..."
collect1 = Collection.create(name: "Collecte de denrées alimentaire 1", asso: "Restos du Coeur", date: "04/12/2021", user_id: marc.id)
collect2 = Collection.create(name: "Collecte de denrées alimentaire 2", asso: "Banque Alimentaire", date: "15/01/2022", user_id: marc.id)
collect3 = Collection.create(name: "Collecte de denrées alimentaire 3", asso: "Secours Populaire", date: "10/02/2022", user_id: marc.id)
puts "Collects created!"

puts "Creating indicators..."
indicator1 = Indicator.create(name: "Poids des denrées", value: 250, collection_id: collect1.id)
indicator2 = Indicator.create(name: "Nb de participants", value: 100, collection_id: collect1.id)
indicator3 = Indicator.create(name: "Valeur des lots", value: 5000, collection_id: collect1.id)
indicator4 = Indicator.create(name: "Poids des denrées", value: 500, collection_id: collect2.id)
indicator5 = Indicator.create(name: "Nb de participants", value: 200, collection_id: collect2.id)
indicator6 = Indicator.create(name: "Valeur des lots", value: 10_000, collection_id: collect2.id)
indicator7 = Indicator.create(name: "Poids des denrées", value: 600, collection_id: collect3.id)
indicator8 = Indicator.create(name: "Nb de participants", value: 225, collection_id: collect3.id)
indicator9 = Indicator.create(name: "Valeur des lots", value: 14_000, collection_id: collect3.id)
puts "Indicators created!"

puts "Creating fields..."
Field.create(name: "Poids des denrées", value: 0)
Field.create(name: "Nb de participants", value: 0)
Field.create(name: "Valeur des lots", value: 0)
puts "Fields created!"

puts "Success, seed created!"
