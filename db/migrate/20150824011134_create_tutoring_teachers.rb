class CreateTutoringTeachers < ActiveRecord::Migration
  def change
    create_table :tutoring_teachers do |t|
      t.belongs_to :member, index: true, foreign_key: true
      t.text :note
      t.datetime :date

      t.timestamps null: false
    end
  end
end
