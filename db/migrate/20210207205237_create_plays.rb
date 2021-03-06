class CreatePlays < ActiveRecord::Migration[6.0]
  def change
    create_table :plays do |t|
      t.datetime :date
      t.integer :user_id, foreign_key: true
      t.integer :game_id, foreign_key: true
      t.string :players
      t.integer :duration
      t.string :winner
      t.text :notes
      t.string :bga_id

      t.timestamps
    end
  end
end
