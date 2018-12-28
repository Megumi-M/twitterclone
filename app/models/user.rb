class User < ApplicationRecord
  validates :name, presence: true,length: { maximum: 30 }
  validates :email, presence: true,length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }
  has_many :tsubuyakis
  has_many :favorites, dependent: :destroy
  has_many :favorite_tsubuyakis, through: :favorites, source: :tsubuyaki
  has_many :contacts
  mount_uploader :image, ImageUploader
end
