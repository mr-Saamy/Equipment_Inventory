class AddFundedToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :funded, :boolean, default: false
  end
end
