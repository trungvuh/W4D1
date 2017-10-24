class UsersController < ApplicationController
  def index
    @user = User.all
    render json: @user
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  #NOTE: Hits the database with the error message.
  def show
    user = find_user(:id)
    if user
      render json: user
    else
      render plain: "Couldnt find user"
      # render text: "no user"
    end
  end

  def update
    user = find_user(:id)
    if user
      user.update(user_params)
      render json: user
    else
      render plain: "Cannot update user"
    end
  end

  def destroy
    user = find_user(:id)
    if user && user.destroy
      render json: user
    else
      render plain: "Couldnt destroy user"
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

  def find_user(val)
    User.find_by(val => params[val])
  end
end
