class RemoveDogReferenceFromWalks < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :walks, :dog_id
    remove_index :walks, :dog_id
    remove_column :walks, :dog_id
  end

  def up
    dogs = Dog.destroy_all
    walks = Walk.destroy_all
    dog_walks = DogWalk.destroy_all
    remove_foreign_key :walks, :dog_id
    remove_index :walks, :dog_id
    remove_column :walks, :dog_id
    # code to reseed dogs, walks, and dog_walks
  end

  def down
    add_reference :walks, :dog, foreign_key: true, null: false
  end
end
