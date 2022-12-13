class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :neighbor_id
      t.integer :partner_id
    end
  end
end
