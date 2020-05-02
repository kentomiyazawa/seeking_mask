# usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|address|string|null: false|
|phone|string|null: false|
|email|string|null: false, unique:false|
|password|string|null: false|
### アソシエーション
- has_many :masks, through: :mask_users
- has_many :mask_users


# masksテーブル
### アソシエーション
- has_many :sizes, through: :mask_sizes
- has_many :sizes
- has_many :makers, through: :mask_makers
- has_many :makers
- has_many :stocks, through: :mask_stocks
- has_many :stocks
- has_many :prices, through: :mask_prices
- has_many :prices 


# sizesテーブル
|Column|Type|Options|
|------|----|-------|
|size|integer|null: false|
### アソシエーション
- has_many: masks, through: :mask_sizes
- has_many: masks


# makersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### アソシエーション
- has_many: masks, through: :mask_makers
- has_many: masks


# stocksテーブル
|Column|Type|Options|
|------|----|-------|
|stock|integer|null :false|
### アソシエーション
- has_many: masks, through: :mask_stocks
- has_many: masks


# pricesテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer|null :false|
### アソシエーション
- has_many: masks, through: :mask_prices
- has_many: masks


# mask_usersテーブル
|Column|Type|Options|
|------|----|-------|
|mask_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### アソシエーション
- belongs_to :mask
- belongs_to :user


# mask_sizesテーブル
|Column|Type|Options|
|------|----|-------|
|mask_id|integer|null: false, foreign_key: true|
|size_id|integer|null: false, foreign_key: true|
### アソシエーション
- belongs_to :mask
- belongs_to :size


# mask_makersテーブル
|Column|Type|Options|
|------|----|-------|
|mask_id|integer|null: false, foreign_key: true|
|maker_id|integer|null: false, foreign_key: true|
### アソシエーション
- belongs_to :mask
- belongs_to :maker


# mask_stocksテーブル
|Column|Type|Options|
|------|----|-------|
|mask_id|integer|null: false, foreign_key: true|
|stock_id|integer|null: false, foreign_key: true|
### アソシエーション
- belongs_to :mask
- belongs_to :stock


# mask_pricesテーブル
|Column|Type|Options|
|------|----|-------|
|mask_id|integer|null: false, foreign_key: true|
|price_id|integer|null: false, foreign_key: true|
### アソシエーション
- belongs_to :mask
- belongs_to :price