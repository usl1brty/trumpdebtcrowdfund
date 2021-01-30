class AddColumnToPolitician < ActiveRecord::Migration[6.0]
  def change
    add_column :politicians, :chamber, :string
    remove_column :politicians, :type, :string
  end
end
