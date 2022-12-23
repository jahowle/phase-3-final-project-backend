class AddFundedToNeeds < ActiveRecord::Migration[6.1]
  def change
    add_column :needs, :funded, :boolean
  end
end
