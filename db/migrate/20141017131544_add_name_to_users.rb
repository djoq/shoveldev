class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :text
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :address, :text
    add_column :users, :title, :text
    add_column :users, :status, :text
    add_column :users, :phone, :int
    add_column :users, :rating, :int
  end
end
