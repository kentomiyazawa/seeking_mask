class CreateMasks < ActiveRecord::Migration[5.2]
  def change
    create_table :masks do |t|

      t.timestamps
    end
  end
end
