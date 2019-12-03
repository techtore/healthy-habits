class User < ActiveRecord::Base
    has_secure_password
    has_many :dates
    has_many :habits, through: :dates
end