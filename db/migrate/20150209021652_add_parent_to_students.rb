class AddParentToStudents < ActiveRecord::Migration
  def change
    add_column :users, :parent_name, :string
    add_column :users, :parent, :string
  end
end
