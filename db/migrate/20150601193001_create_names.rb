class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.integer :beginning_year
      t.integer :ending_year

      t.timestamps null: false
    end
  end
end
