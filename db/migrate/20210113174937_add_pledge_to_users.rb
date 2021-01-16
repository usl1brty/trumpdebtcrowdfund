class AddPledgeToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :pledge, :string
  end
end
