class CreateNeighbors < ActiveRecord::Migration[6.1]
  def change
    create_table :neighbors do |t|
      t.string :name
      t.string :bio
      t.integer :location_id
      t.integer :need_id
      t.integer :partner_id
    end
  end
end
