class Price < ApplicationRecord
  has_many: masks, through: :mask_prices
  has_many: masks
end
