class Api::V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.last(100)
    render json: @users
  end

  def show
    id = request.headers['Id']
    @user = User.find_by(uuid: id)
    render json: @user || {id: nil}

  end


  def create
    email = request.headers['Email']
    password_digest = request.headers['PasswordDigest']
    @user =
      User.create(
        email: email,
        uuid: SecureRandom.uuid,
        password_digest: password_digest
      )
    render json: @user
  end
end
