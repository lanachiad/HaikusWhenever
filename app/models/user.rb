class User < ApplicationRecord
  has_many :haikus

  has_secure_password

  validates :first_name, :last_name, :password, presence: true
end
