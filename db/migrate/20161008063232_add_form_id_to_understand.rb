class AddFormIdToUnderstand < ActiveRecord::Migration
  def change
    add_column :understands, :form_id, :integer
  end
end
