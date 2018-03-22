class AddInformationsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string, null: false, default: ""
    add_column :users, :last_name, :string, null: false, default: ""
    add_column :users, :citizen_id, :string, null: false, default: ""
    add_column :users, :instructor_id, :string
    add_column :users, :student_id, :string
    add_column :users, :department_name, :string
    add_column :users, :role, :string, null: false, default: ""
  end
end
