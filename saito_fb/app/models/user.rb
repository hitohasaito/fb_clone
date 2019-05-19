class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true, uniqueness: true, length: {maximum: 30},
  format:{ with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: {maximum: 8}
  before_validation { email.downcase!}
  has_secure_password
  has_many:facebooks
end
