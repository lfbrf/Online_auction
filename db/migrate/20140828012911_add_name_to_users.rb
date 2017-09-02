class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, :null => false, :default => ""
    add_column :users, :last_name, :string,  :null => false, :default => ""
    add_column :users, :city, :string,  :null => false, :default => ""
    add_column :users, :address, :string
    add_column :users, :cpf, :string,  :null => false, :default => ""
  end
end
