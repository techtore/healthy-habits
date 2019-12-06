class UsersController < ApplicationController

    get "/signup" do 
        erb :"users/signup"
       
    end

    post "/signup" do
        if params[:name] == "" || params[:password] == "" || params[:email] == ""
            redirect to "/signup"
        else 
            user = User.create(:name => params[:name], :email => params[:email], :password => params[:password])
            session["user_id"] = user.id
            redirect "/habits"
        end
    end
end