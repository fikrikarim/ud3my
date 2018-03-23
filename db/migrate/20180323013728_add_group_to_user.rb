class AddGroupToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :group, foreign_key: true
  end
end
