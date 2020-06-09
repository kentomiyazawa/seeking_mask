class Mask < ApplicationRecord
belongs_to :user
validates :maker, :price, :stock, :size, presence: true
end
