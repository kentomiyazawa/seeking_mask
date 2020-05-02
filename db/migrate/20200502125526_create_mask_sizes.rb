class CreateMaskSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :mask_sizes do |t|
      t.integer :mask_id, foreign_key: true
      t.integer :size_id, foreign_key: true
      t.timestamps
    end
  end
end
