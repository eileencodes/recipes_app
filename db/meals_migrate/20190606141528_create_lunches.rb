class CreateLunches < ActiveRecord::Migration[6.1]
  def change
    create_table :lunches do |t|
      t.string :name
      t.integer :lunch_type

      t.timestamps
    end
  end
end
