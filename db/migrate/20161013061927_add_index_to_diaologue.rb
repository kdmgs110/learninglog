class AddIndexToDiaologue < ActiveRecord::Migration
  def change
  end
  
  add_index :understands, :user_id
end
