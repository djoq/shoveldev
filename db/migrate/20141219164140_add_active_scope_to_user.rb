class AddActiveScopeToUser < ActiveRecord::Migration
  def up
    add_index :users, :status
  end
 
  def down
    remove_index :users, :status
  end 

end
