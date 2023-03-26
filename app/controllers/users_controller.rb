class UsersController < ApplicationController

  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end
end

# class UsersController < ApplicationController

#   def show
#     user = User.find(session[:user_id])
#     render json: user
#   end

# end
