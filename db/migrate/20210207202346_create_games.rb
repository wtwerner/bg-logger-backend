class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :bgg_id
      t.string :bga_id
      t.string :img_url
      t.integer :min_players
      t.integer :max_players
      t.integer :min_playtime
      t.integer :max_playtime
      t.text  :description
      t.string :rules_url
      t.integer :average_user_rating
      t.integer :num_user_ratings
      t.integer :average_learning_complexity
      t.integer :rank
      t.integer :trending_rank

      t.timestamps
    end
  end
end
