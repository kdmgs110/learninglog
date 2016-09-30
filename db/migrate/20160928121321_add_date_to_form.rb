class AddDateToForm < ActiveRecord::Migration
  def change
    add_column :forms, :date, :string
  end
end
