class Size < ApplicationRecord
  has_many: masks, through: :mask_sizes
  has_many: masks
end
