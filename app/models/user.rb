class User < ActiveRecord::Base
    has_secure_password
    validates :name, :email, presence: true 
    validates :email, email: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :email, uniqueness: true
    has_many :habits
end