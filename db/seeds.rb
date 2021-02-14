# Users
User.create(name: "Tommy", email: "tommy@test.com", password: "password")
User.create(name: "Lucy", email: "lucy@test.com", password: "password")
User.create(name: "Ella", email: "ella@test.com", password: "password")

# Games
o_game = Game.create(owned: true, wishlist: false, played: true, bga_id: "RLlDWHh7hR")
user = User.first

user.games << o_game

w_game = Game.create(owned: false, wishlist: true, played: true, bga_id: "i5Oqu5VZgP")
user = User.first

user.games << w_game


# Sessions


