class AddNumberToUnderstands < ActiveRecord::Migration
  def change
    add_column :understands, :number, :integer, :default => 1
  end
end
