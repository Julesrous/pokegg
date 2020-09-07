class RemoveAvailableToPurchases < ActiveRecord::Migration[6.0]
  def change
    remove_column :purchases, :available
  end
end
