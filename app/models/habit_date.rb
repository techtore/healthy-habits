class Date < ActiveRecord::Base
    has_many :habits
    has_many :users, through: :habits
end 