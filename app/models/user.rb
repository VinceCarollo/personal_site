class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates_presence_of :email
  validates_presence_of :password_digest, require: true
  has_secure_password
end
