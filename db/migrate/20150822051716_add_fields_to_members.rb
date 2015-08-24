class AddFieldsToMembers < ActiveRecord::Migration
  def change
    add_column :members, :first_name, :string
    add_column :members, :last_name, :string
    add_column :members, :card_number, :string
    add_column :members, :is_paid, :boolean
    add_column :members, :is_admin, :boolean
  end
end
