class Habit < ActiveRecord::Base
    belongs_to :user
    belongs_to :date
end 