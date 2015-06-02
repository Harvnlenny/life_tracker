class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :name
    end

    add_reference :life_events, :person, index: true, foreign_key: true
    add_reference :schools, :person, index: true, foreign_key: true
  end
end
