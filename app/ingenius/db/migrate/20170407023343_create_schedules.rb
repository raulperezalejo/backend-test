class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :date
      t.integer :price
      t.references :event, index: true

      t.timestamps null: false
    end
  end
end
