class AddClearToForms < ActiveRecord::Migration
  def change
    add_column :forms, :clear, :integer
  end
end
