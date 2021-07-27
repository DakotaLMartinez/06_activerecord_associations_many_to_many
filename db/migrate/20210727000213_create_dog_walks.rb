class CreateDogWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_walks do |t|
      t.belongs_to :dog, null: false, foreign_key: true
      t.belongs_to :walk, null: false, foreign_key: true
      t.boolean :number_two
    end
  end
end
