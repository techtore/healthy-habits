class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :name
      t.text :notes
      t.integer :user_id
    end
  end
end
