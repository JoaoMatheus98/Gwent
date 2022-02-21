# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Faction.create!(name: "Nilfgaardian Empire", description: "Wins any round that ends in a draw.")
Faction.create!(name: "Monster", description: "Keeps random Unit Card out after each round.")
Faction.create!(name: "Northern Realms", description: "Grants an extra card upon winning a round.")
Faction.create!(name: "Scoia'tael", description: "Decides who takes first turn.")
Faction.create!(name: "Skellige", description: "Decides who takes first turn.")

CombatRow.create!(name: "Close Combat Cards", description: "")
CombatRow.create!(name: "Raged Combat Cards", description: "")
CombatRow.create!(name: "Siege Cards", description: "")

Ability.create!(name: "Agile Cards", description: "")
Ability.create!(name: "Hero Cards", description: "")
Ability.create!(name: "Medic Cards", description: "")
Ability.create!(name: "Morale Boost Cards", description: "")
Ability.create!(name: "Muster Cards", description: "")
Ability.create!(name: "Muster Cards", description: "")
Ability.create!(name: "Tight Bond Cards", description: "")

Effect.create!(name: "Weather Cards", description: "")
Effect.create!(name: "Decoy Cards", description: "")
Effect.create!(name: "Commander's Horn Cards", description: "")
Effect.create!(name: "Scorch Cards", description: "")
Effect.create!(name: "Summon Avenger Cards", description: "")
Effect.create!(name: "Mardroeme Cards", description: "")
Effect.create!(name: "Berserker Cards", description: "")

Tip.create!(description: "Be very careful of when you choose to 'Pass' in a round if your opponent has not. When you 'Pass', you will not be allowed to put down any more cards for the remainder of that round, no matter how many your opponent puts down afterwards. Even if you had a higher points score when you 'Passed', your opponent could easily keep putting down cards to surpass you and win the round.")
Tip.create!(description: "Unless you have the special abilities of the Northern Kingdoms, Monsters factions or a spy card, your 10 cards is all you have for your full three rounds and you discard everything played after each round, so make sure to plan for the long game. If you empty your deck in the first round and win but your opponent has at least two unit cards left at that time, he can simply put down one unit card each in the following two rounds to beat you. Try to win each round with as few cards as possible, and this also chains into how to develop your deck when collecting cards; for your 'Units' try to only have cards with very high point values so that you don't need many for a very high points score in a round. In fact, sacrificing the first round to make your opponent burn out most of their deck while keeping several of your own high strength cards in reserve can be an extremely effective tactic.")
Tip.create!(description: "Related to the above, Close, Ranged, and Siege unit types by themselves have no inherent strengths or weaknesses to each other (i.e. Ranged does not get a bonus against 'Close', 'Siege' doesn't get a bonus against Ranged, etc.). However, they can be affected by certain Weather cards and some special cards have abilities that will pertain to a particular row. In this case it's best to keep an even mix of types in your deck rather than focus on one particular row.")
Tip.create!(description: "If on your turn you play something that gives you a sudden massive spike in point value far above the current value of your opponent and they have two 'Round Points', they are very likely to 'Pass' that round.")
Tip.create!(description: "Your deck must have at minimum 22 'Unit' cards in it, no matter how weak some of them may be.")
Tip.create!(description: "Your deck must have at minimum 22 'Unit' cards in it, no matter how weak some of them may be.")
Tip.create!(description: "Several cards have multiples, so pick up all the ones you can as many of them have tight bonds or muster ability, allowing you get more points in a round.")
Tip.create!(description: "The starter deck is weak and while possible to win with it in easy matches, one will need to collect more cards to take on tougher opponents.")

Rule.create!(description: "To begin a match, the game selects the starting player with a coin toss.")
Rule.create!(description: "Each player receives 10 random cards pulled from their decks. Players can discard two cards and redraw in the hope of receiving two superior cards. This is done once.")
Rule.create!(description: "Players place a Unit Card on the Gwent board in the dedicated combat row. Each player may play one card per turn unless a special ability enables them to do otherwise. Players may also utilize Weather Cards from the Neutral Deck.")
Rule.create!(description: "Each unit Card has Strength points that are added for each player's total. A player will win a round of Gwent when the player has more points than the other and both players no longer have cards to play or the other player passes their turn.")
Rule.create!(description: "Matches are set with 2 wins out of 3 rounds. This is represented by the Round Points, or red gems, next to each player's name. Losing a round loses you one of the points, if you lose both you lose the match. A draw makes both players lose a point unless you are the Nilfgaardian Empire.")

City.create!(name: "White Orchard", country: "Temeria", description: "White Orchard is a region and village located in Temeria famous for its fruit orchards, whose boughs burst out white blossoms come spring. The Ismena river flows through the village and continues north.", owner: "Ignatius Verrieres")
City.create!(name: "Vizima", country: "Temeria", description: "Vizima, Wyzim, or Wyzima is the capital city of Temeria, one of the Northern Kingdoms.", owner: "Temerian monarchy")
City.create!(name: "Velen", country: "Temeria", description: "Velen, also called No Man's Land, is a province situated in northern Temeria, north of its capital Gors Velen.", owner: "Phillip Strenger")

=begin
#White Orchard
Npc.create!(location: "White Orchard Inn", name: "Aldert Geert", uniqueCard: true, city_id: "1", faction_id: 1)

#Vizima
Npc.create!(location: "Royal garden", name: "Nobleman", uniqueCard: true, city_id: 2, faction_id: 1)

#Velen
Npc.create!(location: "Blackbough", name: "Merchant", uniqueCard: false, city_id: 3, faction_id: 1)
Npc.create!(location: "Blackbough", name: "Blacksmith", uniqueCard: false, city_id: 3, faction_id: 3)
Npc.create!(location: "Claywich", name: "Merchant", uniqueCard: false, city_id: 3, faction_id: 3)
Npc.create!(location: "Crow's Perch", name: "Merchant", uniqueCard: false, city_id: 3, faction_id: 3)
Npc.create!(location: "Crow's Perch", name: "Yona", uniqueCard: false, city_id: 3, faction_id: 2)
Npc.create!(location: "Crow's Perch", name: "Fergus Graem", uniqueCard: false, city_id: 3, faction_id: 4)
Npc.create!(location: "Crow's Perch", name: "Quartermaster", uniqueCard: false, city_id: 3, faction_id: 3)
Npc.create!(location: "Crow's Perch", name: "Bloody Baron", uniqueCard: true, city_id: 3, faction_id: 3)
Npc.create!(location: "Downwarren", name: "Merchant", uniqueCard: false, city_id: 3, faction_id: 2)
Npc.create!(location: "Lindenvale", name: "Blacksmith", uniqueCard: false, city_id: 3, faction_id: 4)
Npc.create!(location: "Lindenvale", name: "Merchant", uniqueCard: false, city_id: 3, faction_id: 3)
Npc.create!(location: "Midcopse", name: "Armorer", uniqueCard: false, city_id: 3, faction_id: 1)
Npc.create!(location: "Midcopse", name: "Merchant", uniqueCard: false, city_id: 3, faction_id: 2)
Npc.create!(location: "Midcopse", name: "Haddy", uniqueCard: true, city_id: 3, faction_id: 3)
Npc.create!(location: "Mulbrydale", name: "Armorer/Swordsmith", uniqueCard: false, city_id: 3, faction_id: 2)
Npc.create!(location: "Nilfgaardian Army Group 'Center' Camp", name: "	Quartermaster Eggebracht", uniqueCard: false, city_id: 3, faction_id: 3)
Npc.create!(location: "Oreton", name: "Merchant", uniqueCard: false, city_id: 3, faction_id: 3)
Npc.create!(location: "Oreton", name: "Boatwright", uniqueCard: true, city_id: 3, faction_id: 1)
Npc.create!(location: "Benek", name: "Old Sage", uniqueCard: true, city_id: 3, faction_id: 2)
Npc.create!(location: "Inn at the Crossroads", name: "Innkeep", uniqueCard: true, city_id: 3, faction_id: 1)
Npc.create!(location: "Cunny of the Goose", name: "Innkeep", uniqueCard: false, city_id: 3, faction_id: 4)
Npc.create!(location: "Between Loggers' Hut and Lucian's Windmill", name: "Merchant", uniqueCard: true, city_id: 3, faction_id: 4)
=end
