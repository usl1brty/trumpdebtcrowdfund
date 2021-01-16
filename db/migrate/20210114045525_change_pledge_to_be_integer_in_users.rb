class ChangePledgeToBeIntegerInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :pledge,
  "integer USING NULLIF(pledge, '')::int"
  end
end
