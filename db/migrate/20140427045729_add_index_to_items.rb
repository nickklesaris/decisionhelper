class AddIndexToItems < ActiveRecord::Migration
  def up
    add_column :items, :session_id, :integer, null: false
    add_index :items, :session_id
  end

  def down
    remove_index :items, :session_id
    remove_column :items, :session_id, :integer, null: false
  end
end
