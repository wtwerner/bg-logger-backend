class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :user_id, foreign_key: true
      t.boolean :owned
      t.boolean :wishlist
      t.boolean :played

      t.timestamps
    end
  end
end
