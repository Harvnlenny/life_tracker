class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.text :title
      t.integer :year
      t.text :description

      t.timestamps null: false
    end
  end
end
