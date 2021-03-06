class CreateGamesUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :games_users do |t|
      t.references :user, foreign_key: true, index: true
      t.references :game, foreign_key: true, index: true
      t.string :team, null: false, index: true, default: 'red'
      t.boolean :captain, default: false, index: true
      t.timestamps
    end
  end
end
