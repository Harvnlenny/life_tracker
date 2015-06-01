class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.text :title
      t.integer :year

      t.timestamps null: false
    end
  end
end
