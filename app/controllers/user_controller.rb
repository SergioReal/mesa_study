class UserController < ApplicationController

def login
@user = User.find_by(user_name: params[:user_name],
                      password: params[:password])

      if @user

        session[:user_id] = @user.id
        redirect_to("/")

      else
        @password = params[:password]
        render("user/login_form")
end
end

def logout

session[:user_id] = nil
redirect_to("/login")

end
end
