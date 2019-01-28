class AddParamsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pesel, :string
    add_column :users, :id_number, :string
    add_column :users, :surname, :string
    add_column :users, :us_role, :int, default: 1
  end
end
