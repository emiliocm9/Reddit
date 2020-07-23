class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, uniqueness: true, length: { within: 4..12 }
  validates :password, presence: true, length: { within: 4..12 }
  validates :email, presence: true, uniqueness: true
end
