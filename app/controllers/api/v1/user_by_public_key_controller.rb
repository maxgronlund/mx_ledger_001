class Api::V1::UserByPublicKeyController < ApplicationController
  def show
    @user = User.find_by(public_key: params["id"])
    render json: @user
  end



end
