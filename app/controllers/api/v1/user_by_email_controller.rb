class Api::V1::UserByEmailController < ApplicationController
  def show
    email = request.headers['Email']
    @user = User.find_by(email: email)
    if @user.present?
      @user.created_at = @user.updated_at = @user.id = nil
      user = @user.serializable_hash
      user.delete_if { |key, value| value.blank? }
    end
    render json: user || {id: nil}
  end
end
