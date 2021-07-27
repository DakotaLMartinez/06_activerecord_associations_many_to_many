class AddTimeToWalks < ActiveRecord::Migration[5.2]
  def change
    add_column :walks, :time, :datetime
  end
end
