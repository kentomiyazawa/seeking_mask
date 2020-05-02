class MaskUser < ApplicationRecord
  belongs_to :mask
  belongs_to :user
end
