class CreateSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :systems do |t|
        t.string :name, null:false
        t.integer :radius, null:false
      t.timestamps
    end
    add_index :systems, :name
    add_index :systems, :radius
  end
end
