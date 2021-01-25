class User < ApplicationRecord
  has_many :microposts
  validates :name,
    presence: true,
    format: { with: /\A[a-zA-Z0-9ぁ-んァ-ン一-龥]+\z/ }
  validates :email,
    presence: true,
    format: { with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
    uniqueness: true
end
