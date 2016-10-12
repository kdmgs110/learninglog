class AddIndexToReplies < ActiveRecord::Migration
  def change
  end
  
  add_index :replies, [:user_id, :form_id]
  add_index :replies, :form_id
end
