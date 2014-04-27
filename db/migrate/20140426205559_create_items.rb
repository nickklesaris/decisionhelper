class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.string :grouping_1, :default => "unused"
      t.string :grouping_2, :default => "unused"
      t.string :grouping_3, :default => "unused"
      t.string :grouping_4, :default => "unused"
      t.string :grouping_5, :default => "unused"
      t.string :grouping_6, :default => "unused"
      t.string :grouping_7, :default => "unused"
      t.string :grouping_8, :default => "unused"
      t.string :grouping_9, :default => "unused"
      t.string :grouping_10, :default => "unused"
      t.string :grouping_11, :default => "unused"
      t.string :grouping_12, :default => "unused"
      t.timestamps
    end
  end
end
