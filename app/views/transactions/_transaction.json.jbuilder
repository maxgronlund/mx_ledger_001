json.extract! transaction, :id, :amount, :sender, :receiver, :meta, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
