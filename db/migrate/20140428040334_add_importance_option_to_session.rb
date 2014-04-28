class AddImportanceOptionToSession < ActiveRecord::Migration
  def up
    add_column :sessions, :importance_1, :integer, :default => 3
    add_column :sessions, :importance_2, :integer, :default => 3
    add_column :sessions, :importance_3, :integer, :default => 3
    add_column :sessions, :importance_4, :integer, :default => 3
    add_column :sessions, :importance_5, :integer, :default => 3
    add_column :sessions, :importance_6, :integer, :default => 3
    add_column :sessions, :importance_7, :integer, :default => 3
    add_column :sessions, :importance_8, :integer, :default => 3
    add_column :sessions, :importance_9, :integer, :default => 3
    add_column :sessions, :importance_10, :integer, :default => 3
    add_column :sessions, :importance_11, :integer, :default => 3
    add_column :sessions, :importance_12, :integer, :default => 3
  end

  def down
    remove_column :sessions, :importance_1
    remove_column :sessions, :importance_2
    remove_column :sessions, :importance_3
    remove_column :sessions, :importance_4
    remove_column :sessions, :importance_5
    remove_column :sessions, :importance_6
    remove_column :sessions, :importance_7
    remove_column :sessions, :importance_8
    remove_column :sessions, :importance_9
    remove_column :sessions, :importance_10
    remove_column :sessions, :importance_11
    remove_column :sessions, :importance_12
  end
end
