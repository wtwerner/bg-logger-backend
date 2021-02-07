# Users
User.create(name: "Tommy", email: "tommy@test.com", password: "password")
User.create(name: "Lucy", email: "lucy@test.com", password: "password")
User.create(name: "Ella", email: "ella@test.com", password: "password")

# Games
Game.create(
    name: "Agricola",
    bga_id: "M5treAlrHc",
    bgg_id: 200680,
    num_user_ratings: 231,
    average_user_rating: 3.7117341532925963,
    average_learning_complexity: 3,
    rank: 69,
    trending_rank: 0,
    min_players: 1,
    max_players: 4,
    min_playtime: 30,
    max_playtime: 120,
    description: "Updated and streamlined for a new generation of players, Agricola, the award-winning and highly acclaimed game by Uwe Rosenberg, features a revised rulebook and gameplay, along with wood pieces and components for up to four players. The 17th Century Was Not an Easy Time to be a Farmer. A game for 1-4 players ages 12 and up; play time is 30 minutes per player. Amazing replay value. The Agricola base game is a revised edition of Uwe Rosenberg’s celebrated classic. The game is designed for 1-4 players, features improved all-wood components and a card selection from the base game as well as its expansions, revised and updated for this edition. Players begin the game with two family members and can grow their families over the course of the game. This allows them more actions but remember you have to grow more food to feed your family as it grows! Feeding your family is a special kind of challenge and players will plant grain and vegetables while supplementing their food supply with sheep, wild boar and cattle. Guide your family to wealth, health and prosperity and you will win the game.",
    img_url: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254915322-61vm3wX33lL.jpg",
)


# Sessions


# User_Games
u = User.first
g = Game.first
u.games << g