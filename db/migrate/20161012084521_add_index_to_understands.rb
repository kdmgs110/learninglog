class AddIndexToUnderstands < ActiveRecord::Migration
  def change
  end
  
  add_index :understands, [:user_id, :form_id]
  add_index :understands, :form_id
end
