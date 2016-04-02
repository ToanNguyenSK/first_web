class CreateHighScore1s < ActiveRecord::Migration
  def change
    create_table :high_score1s do |t|
      t.string :game
      t.integer :score
      t.string :name

      t.timestamps null: false
    end
  end
end
