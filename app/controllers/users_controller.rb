class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    if current_user
      render json: current_user, status: :ok
    else
      render json: {message: "Not authenticated"}, status: :unauthorized
    end
  end

  # POST /users
  def create
    user = User.create!(user_params)
    if user.valid?
      render json: user, status: :ok
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:first_name, :last_name, :cohort, :email, :password, :is_admin, :is_alumni)
    end
end
