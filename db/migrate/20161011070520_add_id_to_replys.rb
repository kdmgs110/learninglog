class AddIdToReplys < ActiveRecord::Migration
  def change
    add_column :replies, :user_id, :integer
    add_column :replies, :form_id, :integer
  end
  

end
