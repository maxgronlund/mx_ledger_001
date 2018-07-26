class Api::V1::UserByEmailController < ApplicationController
  def show
    email = request.headers['Email']
    @user = User.find_by(email: email)
    render json: @user || {id: nil}
  end
end
