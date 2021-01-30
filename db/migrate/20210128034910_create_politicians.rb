class CreatePoliticians < ActiveRecord::Migration[6.0]
  def change
    create_table :politicians do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :nickname
      t.string :full_name
      t.string :birthday
      t.string :type
      t.string :state
      t.string :party
      t.string :url
      t.string :address
      t.string :phone
      t.string :contact_form

      t.timestamps
    end
  end
end
