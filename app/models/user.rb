class User < ApplicationRecord
  has_many :parcels
  validates :first_name, :last_name, :email_address, :phone_number, :username, :password_digest, presence: true
end
