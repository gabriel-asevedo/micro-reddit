class User < ApplicationRecord

  has_many :posts
  has_many :comments

  has_secure_password

  validates :username, presence: true, length: { minimum: 4, maximum: 25 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 8 }, format: {
    with: /\A(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/,
    message: "must be at least 8 characters long, contain at least one uppercase letter, one lowercase letter, one number and one symbol"
  }
  validates :password_confirmation, presence: true, confirmation: { message: "must match password" }
end
