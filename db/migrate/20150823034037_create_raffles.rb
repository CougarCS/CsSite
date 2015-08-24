class CreateRaffles < ActiveRecord::Migration
  def change
    create_table :raffles do |t|
      t.belongs_to :member, index: true, foreign_key: true
      t.date :date
      t.integer :points

      t.timestamps null: false
    end
  end
end
