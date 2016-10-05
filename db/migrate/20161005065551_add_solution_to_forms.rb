class AddSolutionToForms < ActiveRecord::Migration
  def change
    add_column :forms, :solved, :boolean
  end
end
