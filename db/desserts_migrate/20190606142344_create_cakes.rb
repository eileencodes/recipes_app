class CreateCakes < ActiveRecord::Migration[6.1]
  def change
    create_table :cakes do |t|
      t.string :name
      t.integer :cake_type

      t.timestamps
    end
  end
end
