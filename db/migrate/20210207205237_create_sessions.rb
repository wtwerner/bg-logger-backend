class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.datetime :date
      t.integer :user_id, foreign_key: true
      t.integer :game_id, foreign_key: true
      t.string :players
      t.integer :duration
      t.string :winner
      t.text :notes

      t.timestamps
    end
  end
end
