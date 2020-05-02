class Stock < ApplicationRecord
  has_many: masks, through: :mask_stocks
  has_many: masks
end
