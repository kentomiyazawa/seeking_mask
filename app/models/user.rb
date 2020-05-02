class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :masks, through: :mask_users
  has_many :mask_users
  validates :name, :address, :phone, presence: true, uniqueness: true
end
