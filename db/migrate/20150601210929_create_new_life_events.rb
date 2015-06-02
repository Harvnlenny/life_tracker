class CreateNewLifeEvents < ActiveRecord::Migration
  def change
    create_table :new_life_events do |t|
      t.text :Title
      t.integer :Year
      t.textname :Description

      t.timestamps null: false
    end
  end
end
