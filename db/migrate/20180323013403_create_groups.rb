class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :project
      t.string :submission
      t.string :score
      
      t.timestamps
    end
  end
end
