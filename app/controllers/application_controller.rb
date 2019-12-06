require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    register Sinatra::Flash
    enable :sessions
    set :session_secret, "habit_tracker"
  end

  get "/" do
    erb :welcome
  end

  helpers do 
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      @user ||= User.find_by(id: session[:user_id])
    end
  end

end
