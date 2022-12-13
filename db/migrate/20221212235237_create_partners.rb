class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.string :name
      t.integer :location_id
      t.integer :neighbor_id
    end
  end
end
