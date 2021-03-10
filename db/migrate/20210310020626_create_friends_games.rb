class CreateFriendsGames < ActiveRecord::Migration[6.0]
  def change
    create_table :friends_games do |t|
      t.integer :friend_id, foreign_key: true
      t.integer :game_id, foreign_key: true

      t.timestamps
    end
  end
end
