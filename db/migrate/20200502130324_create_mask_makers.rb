class CreateMaskMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :mask_makers do |t|
      t.integer :mask_id, foreign_key: true
      t.integer :maker_id, foreign_key: true
      t.timestamps
    end
  end
end
