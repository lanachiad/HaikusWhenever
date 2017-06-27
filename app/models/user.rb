class User < ApplicationRecord
  has_many :haikus

  has_secure_password
end
