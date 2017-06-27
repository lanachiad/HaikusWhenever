class User < ApplicationRecord
  has_many :poems
  
  has_secure_password
end
