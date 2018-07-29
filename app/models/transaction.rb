class Transaction < ApplicationRecord
  PAYMENT_FOR_GOODS = 'payment_for_goods'
  PAYMENT_FOR_SERVICE = 'payment_for_service'
  PAYMENT_FOR_USAGE = 'payment_for_usage'


  TRANSACTION_TYPES =
    [
      ['Payment for goods', PAYMENT_FOR_GOODS],
      ['Payment for service', PAYMENT_FOR_SERVICE],
      ['Payment for usage', PAYMENT_FOR_USAGE]
    ].freeze

  # Transaction states
  PENDING = 'pending'
  COMPLETED = 'completed'

  TRANSACTION_STATES =
    [
      ['Pending', PENDING],
      ['Completed', COMPLETED]
    ]
end
