class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :schedule_date
      t.integer :price
      t.references :event

      t.timestamps null: false
    end
  end
end
