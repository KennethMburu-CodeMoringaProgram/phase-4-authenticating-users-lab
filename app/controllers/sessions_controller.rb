class SessionsController < ApplicationController
    def create
      user = User.find_by(username: params[:username])
  
      if user
        session[:user_id] = user.id
        render json: user, status: :ok
      else
        render json: { error: 'Invalid username' }, status: :unprocessable_entity
      end
    end
  
    def destroy
      session.delete(:user_id)
      head :no_content
    end
  end
  
# class SessionsController < ApplicationController
  
#   def create
#     user = User.find_by(username: params[:username])
#     session[:user_id] = user.id
#     render json: user
#   end

#   def destroy
#     session.delete :user_id
#     head :no_content
#   end

# end
