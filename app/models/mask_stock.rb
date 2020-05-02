class MaskStock < ApplicationRecord
  belongs_to :mask
  belongs_to :stock
end
