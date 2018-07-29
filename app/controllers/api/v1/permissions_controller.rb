class Api::V1::PermissionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    render json: permission || {id: nil}
  end

  def update
    params.permit!
    permission
      .update(
        permissions: params['permissions']
      )
    render json: permission || {id: nil}
  end

  def permission
    granted_to = request.headers['GrantedTo']
    given_by = request.headers['GivenBy']

    @permission ||=
      Permission
      .where(granted_to: granted_to, given_by: given_by)
      .first_or_create(granted_to: granted_to, given_by: given_by, uuid: SecureRandom.uuid)
  end
end
