class CreateMaskPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :mask_prices do |t|
      t.integer :mask_id, foreign_key: true
      t.integer :price_id, foreign_key: true
      t.timestamps
    end
  end
end
