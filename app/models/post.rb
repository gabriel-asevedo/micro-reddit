class Post < ApplicationRecord

  belongs_to :user
  has_many :comments

  validates :title, presence: true, uniqueness: true, length: {minimum:4, maximum:20}
  validates :body, presence: true

end
