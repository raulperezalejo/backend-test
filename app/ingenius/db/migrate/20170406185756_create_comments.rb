class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :event
      t.references :user


      t.timestamps null: false
    end
  end
end
