class AddMoreFieldsToMembers < ActiveRecord::Migration
  def change
    add_column :members, :classification, :string
    add_column :members, :returning, :boolean
    add_column :members, :dietary_restrictions, :string
  end
end
