class RemoveNumberTwoFromWalks < ActiveRecord::Migration[5.2]
  def change
    remove_column :walks, :number_two
  end
end
