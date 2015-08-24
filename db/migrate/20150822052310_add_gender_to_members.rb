class AddGenderToMembers < ActiveRecord::Migration
  def change
    add_column :members, :gender, :string
  end
end
