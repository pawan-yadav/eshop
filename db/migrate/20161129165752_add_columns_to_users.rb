class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :numeric_id, :string
    add_column :users, :alternative_numeric_id, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end