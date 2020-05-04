class CreateMasks < ActiveRecord::Migration[5.2]
  def change
    create_table :masks do |t|
      t.string :maker, null: false
      t.integer :price, null: false 
      t.integer :stock, null: false
      t.string :size, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
