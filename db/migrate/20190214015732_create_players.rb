class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :game_name
      t.string :country
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
