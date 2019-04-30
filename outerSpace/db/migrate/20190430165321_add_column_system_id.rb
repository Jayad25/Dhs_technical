class AddColumnSystemId < ActiveRecord::Migration[5.2]
  def change
    add_column :ships, :system_id, :integer
  end
end
