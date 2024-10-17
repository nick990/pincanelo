class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.integer :elo_rating, null: false, default: 1500

      t.timestamps
    end
  end
end
