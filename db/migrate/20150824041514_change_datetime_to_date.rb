class ChangeDatetimeToDate < ActiveRecord::Migration
  def self.up
  	change_column :tutoring_teachers, :date, :date
  end

  def self.down
  	change_column :tutoring_teachers, :date, :datetime
  end

end
