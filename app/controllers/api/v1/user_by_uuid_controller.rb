class Api::V1::UserByUuidController < ApplicationController
  def show
    @user = User.find_by(uuid: params["id"])
    render json: @user
  end
end
