class CreateDinners < ActiveRecord::Migration[6.1]
  def change
    create_table :dinners do |t|
      t.string :name
      t.integer :dinner_type

      t.timestamps
    end
  end
end
