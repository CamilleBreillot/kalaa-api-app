puts "Creating users..."

marc = User.create(email: "marc@gmail.com", password: "password", username: "Marc")
camille = User.create(email: "camille@gmail.com", password: "password", username: "Camille")
puts "Users created..."

puts "Creating collects..."
collect1 = Collection.create(name: "Collecte de denrées alimentaire 1", asso: "Restos du Coeur", date: "04/12/2021", user_id: marc.id)
collect2 = Collection.create(name: "Collecte de denrées alimentaire 2", asso: "Banque Alimentaire", date: "15/01/2022", user_id: marc.id)
collect3 = Collection.create(name: "Collecte de denrées alimentaire 3", asso: "Secours Populaire", date: "10/02/2022", user_id: marc.id)
puts "Collects created..."

puts "Creating indicators..."
indicator1 = Indicator.create(name: "Denrées collectées", value: 250, collection_id: collect1.id)
indicator2 = Indicator.create(name: "Participants", value: 100, collection_id: collect1.id)
indicator3 = Indicator.create(name: "Durée", value: 2, collection_id: collect1.id)
indicator4 = Indicator.create(name: "Denrées collectées", value: 500, collection_id: collect2.id)
indicator5 = Indicator.create(name: "Participants", value: 200, collection_id: collect2.id)
indicator6 = Indicator.create(name: "Durée", value: 4, collection_id: collect2.id)
indicator7 = Indicator.create(name: "Denrées collectées", value: 600, collection_id: collect3.id)
indicator8 = Indicator.create(name: "Participants", value: 225, collection_id: collect3.id)
indicator9 = Indicator.create(name: "Durée", value: 5, collection_id: collect3.id)
puts "Indicators created..."
