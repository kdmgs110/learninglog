class AddTeachabbleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :teachable, :text
    add_column :users, :learning, :text
  end
end
