class CreatePokeEggs < ActiveRecord::Migration[6.0]
  def change
    create_table :poke_eggs do |t|
      t.string :name
      t.string :type
      t.date :birth_day
      t.string :region
      t.string :state
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
