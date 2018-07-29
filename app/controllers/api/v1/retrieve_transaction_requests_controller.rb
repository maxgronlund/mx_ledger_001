class Api::V1::RetrieveTransactionRequestsController < ApplicationController
  def index
    # sender = request.headers['Sender']
    # recipient = request.headers['Recipient']
    # state = request.headers['State']
    transaction_type = request.headers['TransactionType']
    requester = request.headers['Requester']

    transactions =
      Transaction
      .where(transaction_type: transaction_type)
      .where(recipient: requester)
      .or(Transaction.where(sender: requester))
      .where(state: 'pending')
    render json: transactions || {status: 'not found'}
    transactions.update_all(state: Transaction::COMPLETED)
  end
end
