class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name, null: false
      t.integer :velocity, null:false
      t.timestamps
    end
    add_index :ships, :name
    add_index :ships, :velocity
  end
end
