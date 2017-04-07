class ChangeEventColumn < ActiveRecord::Migration
  def change
    remove_column :events, :dates
  end
end
