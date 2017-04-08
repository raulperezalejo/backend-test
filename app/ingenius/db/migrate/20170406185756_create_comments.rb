class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :event, index: true
      t.references :user, index: true


      t.timestamps null: false
    end
  end
end
