class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :post

  validates :commenter, presence: true, length: {minimum: 4, maximum:25}
  validates :body, presence: true

end
