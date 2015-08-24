class AddTutorToMembers < ActiveRecord::Migration
  def change
    add_column :members, :tutor, :boolean
  end
end
