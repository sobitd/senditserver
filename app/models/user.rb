class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  has_secure_password
  has_many :parcels
  validates :first_name, :last_name, :email_address, :phone_number, :username, :password_digest, presence: true
end
