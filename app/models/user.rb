class User < ActiveRecord::Base
  has_many :albums
  has_many :photos, through: :albums
  has_secure_password
end
