class AddStudentIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :student_id, :string
  end
end
