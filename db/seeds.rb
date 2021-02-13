# Users
User.create(name: "Tommy", email: "tommy@test.com", password: "password")
User.create(name: "Lucy", email: "lucy@test.com", password: "password")
User.create(name: "Ella", email: "ella@test.com", password: "password")

# Games
game = Game.create(owned: true, wishlist: true, played: true, bga_id: "RLlDWHh7hR")
user = User.first

user.games << game


# Sessions


