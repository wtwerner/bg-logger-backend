class CreateUserGames < ActiveRecord::Migration[6.0]
  def change
    create_table :user_games do |t|
      t.integer :user_id, foreign_key: true
      t.integer :game_id, foreign_key: true
      t.boolean :owned
      t.boolean :wishlist

      t.timestamps
    end
  end
end
