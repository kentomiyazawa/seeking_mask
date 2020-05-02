class Maker < ApplicationRecord
  has_many: masks, through: :mask_makers
  has_many: masks
end
