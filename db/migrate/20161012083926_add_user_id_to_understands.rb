class AddUserIdToUnderstands < ActiveRecord::Migration
  def change
    add_column :understands, :user_id, :integer
  end
end
  