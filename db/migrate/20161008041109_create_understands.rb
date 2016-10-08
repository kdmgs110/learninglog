class CreateUnderstands < ActiveRecord::Migration
  def change
    create_table :understands do |t|
      t.integer :understand_id

      t.timestamps null: false
    end
    
    add_index :understands, :understand_id
  end
end
