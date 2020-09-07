class RenameTypeToPokeEgg < ActiveRecord::Migration[6.0]
  def change
    rename_column :poke_eggs, :type, :category
  end
end
