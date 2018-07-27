class Api::V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.last(100)
    render json: @users
  end

  def show
    id = request.headers['Id']
    @user = User.find_by(uuid: id)
    @user.id = nil if @user
    render json: @user || {id: nil}

  end

  def create
    email = request.headers['Email']
    password_digest = request.headers['PasswordDigest']
    user =
      User.create(
        email: email,
        uuid: SecureRandom.uuid,
        password_digest: password_digest
      ).serializable_hash

    user.delete :id
    user.delete_if { |key, value| value.blank? }
    render json: user
  end

  def update
    params.permit!
    id = request.headers['Id']
    profile =  params['profile']
    @user = User.find_by(uuid: id)
    @user.update(profile)
    render json: @user || {id: nil}
  end
end
