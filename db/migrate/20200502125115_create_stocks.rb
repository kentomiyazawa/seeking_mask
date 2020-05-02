class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.integer :stock, null: false
      t.timestamps
    end
  end
end
