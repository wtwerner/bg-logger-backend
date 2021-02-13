class AddBgaIdToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :bga_id, :string
  end
end
