class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.integer :user_id, foreign_key: true

      t.timestamps
    end
  end
end
