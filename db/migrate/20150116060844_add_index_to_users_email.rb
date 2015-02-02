class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
    add_index :users, :username ,unique: true #adds unique index to the attribute 'username' of the model 'user'
  end
end
