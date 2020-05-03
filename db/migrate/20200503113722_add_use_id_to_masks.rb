class AddUseIdToMasks < ActiveRecord::Migration[5.2]
  def change
    add_column :masks, :user_id, :integer
  end
end
