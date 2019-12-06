class User < ActiveRecord::Base
    has_secure_password
    validates :name, presence: true 
    validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
    validates :email, uniqueness: true
    has_many :habits
end