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
        if habit
            redirect '/habits'
        else
            redirect '/habits/new'
        end
    end

    get '/habits/:id' do
        if logged_in? && current_user
            @habit = Habit.find_by(id: params[:id])
            erb :'habits/show'
        else
            redirect '/login'
        end
    end

    get '/habits/:id/edit' do 
        if current_user
            @habits = Habit.find_by(id: params[:id])
            erb :'habits/edit'
        else
            redirect '/login' 
        end
    end

    patch '/habits/:id' do 
        @user = current_user
        @habits = Habit.find_by(id: params[:id])
        if !@user
            redirect '/login'
        else
            @habits.update(name: params[:name], date: params[:date], notes: params[:notes], user_id: @user.id)
            redirect "/habits/#{@habits.id}"
        end
    end

    delete '/habits/:id' do 
        @user = current_user
        @habit = Habit.find_by(params[:id])
        if @user && @habit.id = params[:id]
            @habit.destroy
        end
        redirect '/habits'
    end
end