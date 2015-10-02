class AddNameToTutoringTeachers < ActiveRecord::Migration
  def change
    add_column :tutoring_teachers, :member_name, :string
  end
end
