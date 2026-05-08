class AddNotNullConstraints < ActiveRecord::Migration[7.2]
  def change
    change_column_null :users, :name, false
    change_column_null :users, :username, false
    change_column_null :projects, :name, false
  end
end
