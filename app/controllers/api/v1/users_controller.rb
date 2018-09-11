class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :destroy, :update]
  # skip_before_action :authenticate_request, only: %i[login register]
  skip_before_action :authorized, only: %i[create index show]

 # [...]
  def login
    authenticate params[:email], params[:password]
  end

  def test
    render json: {
          message: 'You have passed authentication and authorization test'
        }
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end
 # [...]
  def index
    @users = User.all
    render json: { users: User.all}
  end

  def new
    @user = User.create
  end

  def show
    # @user = User.find(params[:id])
    render json: { user: @user}
  end

  def create
     @user = User.create(user_params)
     if @user.valid?
       @token = encode_token(user_id: @user.id)
       render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
     else
       render json: { error: 'failed to create user' }, status: :not_acceptable
     end
   end

  def update
    # @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # @post = post.find(params[:id])
    @user.destroy
    render json: @user, status: :accepted
  end

  def register
    @user = User.create(user_params)
    if @user.save
      response = { message: 'User created successfully'}
      render json: response, status: :created
    else
      render json: @user.errors, status: :bad
    end
  end


  private

  def authenticate(email, password)
   command = AuthenticateUser.call(email, password)

   if command.success?
     render json: {
       access_token: command.result,
       message: 'Login Successful'
     }
   else
     render json: { error: command.errors }, status: :unauthorized
   end
 end
# [...]
  def user_params
    params.permit(
      :name,
      :email,
      :password
    )
  end

  def find_user
    @user = User.find(params[:id])
  end
end
