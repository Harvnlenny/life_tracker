class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.text :name
      t.integer :beginning_year
      t.integer :ending_year

      t.timestamps null: false
    end
  end
end
