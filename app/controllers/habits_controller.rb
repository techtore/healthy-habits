class HabitsController < ApplicationController 
    
    get '/habits' do 
        if logged_in?
            @user = current_user
            @habits = @user.habits
            erb :'habits/index'  
        else
            redirect "/login"  
        end
    end
end