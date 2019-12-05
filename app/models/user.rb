class User < ActiveRecord::Base
    has_secure_password
    validates :name, presence: true
    validates :email, presence: true, format: { with: /A[^@s] @[^@s] z/, allow_blank: false }
    validates :email, uniqueness: true
    has_many :habits
end