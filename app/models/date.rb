class Date < ActiveRecord::Base
    has many :habits
    has_many :users, through: :habits
end