class Api::V1::TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    sender_uuid = request.headers['SenderUUID']
    recipient_uuid = request.headers['RecipientUUID']
    transaction_type = request.headers['TransactionType']
    body =  request.body.read
    payload =  JSON.parse(body)
    # params.permit!
    #ap params['meta'][:body].class.name
    transaction =
      Transaction
      .create(
        uuid: SecureRandom.uuid,
        transaction_type: transaction_type,
        sender: sender_uuid,
        recipient: recipient_uuid,
        meta: payload["meta"]
      )

    render json: transaction
  rescue
    render json: {status: 'error'}
  end

  def show
  end

  def index
    @user = User.find_by(uuid: params["id"])
    render json: @user
  end
end
