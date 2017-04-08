class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.boolean :featured
      t.string :image
      t.references :place, index: true
      t.references :category, index: true
      t.date :dates

      t.timestamps null: false
    end
  end
end
