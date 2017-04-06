class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.boolean :featured
      t.string :image
      t.references :place
      t.references :category
      t.date :dates

      t.timestamps null: false
    end
  end
end
