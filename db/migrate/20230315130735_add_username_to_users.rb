class AddUsernameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string, null: false, default: ""
    add_index :users, :username, unique: true
    add_reference :lists, :user, index: true
  end
end
