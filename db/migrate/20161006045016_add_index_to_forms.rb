class AddIndexToForms < ActiveRecord::Migration
  def change
  end
  
  add_index :forms, :user_id
end
