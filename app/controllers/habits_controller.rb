class HabitsController < ApplicationController 
    
    get '/habits' do 
        @habits = Habit.all
        erb :'habits/index'
    end
end