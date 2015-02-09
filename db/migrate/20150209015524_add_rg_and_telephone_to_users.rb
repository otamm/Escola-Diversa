class AddRgAndTelephoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rg, :string
    add_column :users, :rg_parent, :string
    add_column :users, :phone, :string
  end
end
