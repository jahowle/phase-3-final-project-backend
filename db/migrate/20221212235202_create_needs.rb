class CreateNeeds < ActiveRecord::Migration[6.1]
  def change
    create_table :needs do |t|
      t.string :description
      t.integer :amount
      t.integer :neighbor_id
      t.integer :category_id
    end
  end
end
