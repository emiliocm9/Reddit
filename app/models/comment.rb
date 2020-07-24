class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user_id, :post_id, presence: true
  validates :author, presence: true, length: { within: 4..20 }
  validates :body, presence: true, length: { maximum: 100 }
end
