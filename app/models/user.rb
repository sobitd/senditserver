class User < ApplicationRecord 
    validates :first_name, :last_name, :email_address, :phone_number, :username, :password_digest, presence: true
end
