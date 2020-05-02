class CreateMaskStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :mask_stocks do |t|
      t.integer :mask_id, foreign_key: true
      t.integer :stock_id, foreign_key: true
      t.timestamps
    end
  end
end
