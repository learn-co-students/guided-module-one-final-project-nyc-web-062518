jurassic_park = Movie.create(title:"Jurassic Park")
a_new_hope = Movie.create(title:"Star Wars: A New Hope")
empire_strikes_back = Movie.create(title:"Star Wars: The Empire Strikes Back")
return_of_the_jedi = Movie.create(title:"Star Wars: Return of the Jedi")
back_to_the_future = Movie.create(title:"Back to the Future")
back_to_the_future_2 = Movie.create(title:"Back to the Future 2")
jaws = Movie.create(title:"Jaws")
arachnophobia = Movie.create(title:"Arachnophobia")

steven_spielberg = Director.create(name:"Steven Spielberg")
george_lucas = Director.create(name:"George Lucas")
robert_zemeckis = Director.create(name:"Robert Zemeckis")
frank_marshall = Director.create(name:"Frank Marshall")

michael_j_fox = Actor.create(name:"Michael J Fox")
carrie_fisher = Actor.create(name:"Carrie Fisher")
harrison_ford = Actor.create(name:"Harrison Ford")
mark_hamill = Actor.create(name:"Mark Hamill")
christopher_lloyd = Actor.create(name:"Christopher Lloyd")
roy_scheider = Actor.create(name:"Roy Scheider")
robert_shaw = Actor.create(name:"Robert Shaw")
john_goodman = Actor.create(name:"John Goodman")
jeff_daniels = Actor.create(name:"Jeff Daniels")
jeff_goldblum = Actor.create(name:"Jeff Goldblum")
laura_dern = Actor.create(name:"Laura Dern")
sam_neill = Actor.create(name:"Sam Neill")

luke_skywalker = Character.create(name:"Luke Skywalker", actor: mark_hamill)
han_solo = Character.create(name:"Han Solo", actor: harrison_ford)
princess_leia = Character.create(name:"Princess Leia", actor: carrie_fisher)
marty = Character.create(name:"Marty", actor: michael_j_fox)
doc = Character.create(name:"Doc", actor: christopher_lloyd)
delbert = Character.create(name:"Delbert McClintock", actor: john_goodman)
ross = Character.create(name: "Ross Jennings", actor: jeff_daniels)
martin = Character.create(name: "Martin Brody", actor: roy_scheider)
quint = Character.create(name: "Quint", actor: robert_shaw)
ian = Character.create(name:"Ian Malcolm", actor: jeff_goldblum)
ellie = Character.create(name:"Ellie Sattler", actor: laura_dern)
alan = Character.create(name:"Alan Grant", actor: sam_neill)

MovieCharacter.create(movie: jurassic_park, character: ian)
MovieCharacter.create(movie: jurassic_park, character: ellie)
MovieCharacter.create(movie:jurassic_park, character: alan)
MovieCharacter.create(movie: a_new_hope, character: luke_skywalker)
MovieCharacter.create(movie: a_new_hope, character: han_solo)
MovieCharacter.create(movie:a_new_hope, character: princess_leia)
MovieCharacter.create(movie: empire_strikes_back, character: luke_skywalker)
MovieCharacter.create(movie: empire_strikes_back, character: han_solo)
MovieCharacter.create(movie: empire_strikes_back, character: princess_leia)
MovieCharacter.create(movie: return_of_the_jedi, character: luke_skywalker)
MovieCharacter.create(movie: return_of_the_jedi, character: han_solo)
MovieCharacter.create(movie: return_of_the_jedi, character: princess_leia)
MovieCharacter.create(movie: back_to_the_future, character: marty)
MovieCharacter.create(movie: back_to_the_future, character: doc)
MovieCharacter.create(movie: back_to_the_future_2, character: marty)
MovieCharacter.create(movie: back_to_the_future_2, character: doc)
MovieCharacter.create(movie: jaws, character: martin)
MovieCharacter.create(movie: jaws, character: quint)
MovieCharacter.create(movie: arachnophobia, character: ross)
MovieCharacter.create(movie: arachnophobia, character: delbert)

MovieActor.create(movie: jurassic_park, actor: jeff_goldblum)
MovieActor.create(movie: jurassic_park, actor: laura_dern)
MovieActor.create(movie: jurassic_park, actor: sam_neill)
MovieActor.create(movie: a_new_hope, actor: mark_hamill)
MovieActor.create(movie: a_new_hope, actor: carrie_fisher)
MovieActor.create(movie: a_new_hope, actor: harrison_ford)
MovieActor.create(movie: return_of_the_jedi, actor: mark_hamill)
MovieActor.create(movie: return_of_the_jedi, actor: carrie_fisher)
MovieActor.create(movie: return_of_the_jedi, actor: harrison_ford)
MovieActor.create(movie: empire_strikes_back, actor: mark_hamill)
MovieActor.create(movie: empire_strikes_back, actor: carrie_fisher)
MovieActor.create(movie: empire_strikes_back, actor: harrison_ford)
MovieActor.create(movie: back_to_the_future, actor: michael_j_fox)
MovieActor.create(movie: back_to_the_future, actor: christopher_lloyd)
MovieActor.create(movie: back_to_the_future_2, actor: michael_j_fox)
MovieActor.create(movie: back_to_the_future_2, actor: christopher_lloyd)
MovieActor.create(movie: jaws, actor: roy_scheider)
MovieActor.create(movie: jaws, actor: robert_shaw)
MovieActor.create(movie: arachnophobia, actor: jeff_daniels)
MovieActor.create(movie: arachnophobia, actor: john_goodman)

# luke_skywalker.actor = mark_hamill
# han_solo.actor = harrison_ford
# princess_leia.actor = carrie_fisher
# marty.actor = michael_j_fox
# doc.actor = christopher_lloyd
# delbert.actor = john_goodman
# ross.actor = jeff_daniels
# martin.actor = roy_scheider
# quint.actor = robert_shaw
# ian.actor = jeff_goldblum
# ellie.actor = laura_dern
# alan.actor = sam_neill

jurassic_park.director = steven_spielberg
jurassic_park.save
a_new_hope.director = george_lucas
return_of_the_jedi.director = george_lucas
empire_strikes_back.director = george_lucas
back_to_the_future.director = robert_zemeckis
back_to_the_future_2.director = robert_zemeckis
jaws.director = steven_spielberg
arachnophobia.director = frank_marshall

mark_hamill.paygrade = 2
harrison_ford.paygrade = 1
carrie_fisher.paygrade = 2
michael_j_fox.paygrade = 3
christopher_lloyd.paygrade = 3
john_goodman.paygrade = 2
jeff_daniels.paygrade = 3
roy_scheider.paygrade = 3
robert_shaw.paygrade = 1
jeff_goldblum.paygrade = 1
laura_dern.paygrade = 2
sam_neill.paygrade = 3

mark_hamill.a_list = true
harrison_ford.a_list = true
carrie_fisher.a_list = true
michael_j_fox.a_list = true
christopher_lloyd.a_list = false
john_goodman.a_list = true
jeff_daniels.a_list = false
roy_scheider.a_list = false
robert_shaw.a_list = false
jeff_goldblum.a_list = true
laura_dern.a_list = false
sam_neill.a_list = false

steven_spielberg.oscar_winner = true
george_lucas.oscar_winner = true
robert_zemeckis.oscar_winner = true
frank_marshall.oscar_winner = false

jurassic_park.box_office = 100000000
a_new_hope.box_office = 30000000
empire_strikes_back.box_office = 40000000
return_of_the_jedi.box_office = 50000000
back_to_the_future.box_office = 24000000
back_to_the_future_2.box_office = 35000000
jaws.box_office = 42000000
arachnophobia.box_office = 15000000
