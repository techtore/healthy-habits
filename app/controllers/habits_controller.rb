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

    get '/habits/new' do 
        if logged_in?
            erb :'habits/new'
        else
            redirect '/'
        end
    end

    post '/habits' do 
        user = User.find_by(id: params[:user_id])
        habit = Habit.create(name: params[:name], date: params[:date], notes: params[:notes], user_id: current_user.id)
        if habit.save
            redirect '/habits'
        else
            redirect '/habits/new'
        end
    end
end