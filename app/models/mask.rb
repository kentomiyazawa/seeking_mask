class Mask < ApplicationRecord
  has_many :sizes, through: :mask_sizes
  has_many :sizes
  has_many :makers, through: :mask_makers
  has_many :makers
  has_many :stocks, through: :mask_stocks
  has_many :stocks
  has_many :prices, through: :mask_prices
  has_many :prices
end
