class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.integer :user_id, foreign_key: true
      t.integer :friend_id, foreign_key: true
    end
  end
end
