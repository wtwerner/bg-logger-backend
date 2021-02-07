class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :players
      t.integer :duration
      t.string :winner
      t.text :notes

      t.timestamps
    end
  end
end
