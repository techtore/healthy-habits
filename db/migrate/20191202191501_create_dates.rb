class CreateDates < ActiveRecord::Migration
  def change
    create_table :dates do |t|
      t.date :date
      t.integer :habit_id
      t.timestamps null: false
    end
  end
end
