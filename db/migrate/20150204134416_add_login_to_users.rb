class AddLoginToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username_log, :string
  end
end
