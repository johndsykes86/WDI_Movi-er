class AddUserNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_name, :string, :limit => 20
  end
end
