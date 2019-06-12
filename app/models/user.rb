class User < ApplicationRecord
  validates_presence_of :username, uniqueness: true
  validates_presence_of :email
  validates_presence_of :password_digest, require: true
  has_secure_password
end
