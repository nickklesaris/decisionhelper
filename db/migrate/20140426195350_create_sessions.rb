class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name,  null: false
      t.text :description
      t.string :item_type, null: false
      t.string :criterion_1, :default => "unused"
      t.string :criterion_2, :default => "unused"
      t.string :criterion_3, :default => "unused"
      t.string :criterion_4, :default => "unused"
      t.string :criterion_5, :default => "unused"
      t.string :criterion_6, :default => "unused"
      t.string :criterion_7, :default => "unused"
      t.string :criterion_8, :default => "unused"
      t.string :criterion_9, :default => "unused"
      t.string :criterion_10, :default => "unused"
      t.string :criterion_11, :default => "unused"
      t.string :criterion_12, :default => "unused"
      t.timestamps
    end
  end
end
