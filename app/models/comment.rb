class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validations :user_id, :post_id, presence: true
  validations :author, presence: true, length: { within: 4..20 }
  validations :body, presence: true, length: { maximum: 100 }
end
