class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :project
      t.text :submission
      t.integer :score
      
      t.timestamps
    end
  end
end
