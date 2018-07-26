class Api::V1::PermissionsController < ApplicationController
  def show
    ap granted_to = request.headers['GrantedTo']
    ap given_by = request.headers['GivenBy']

    @permission = Permission.find_by(granted_to: granted_to, given_by: given_by)
    render json: @permission || {id: nil}
  end
end
