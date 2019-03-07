class Household < ApplicationRecord
  enum payment: { cash: 1, bank_account: 2, credit: 3, debit: 4, gift_card: 5, point: 6, others: 7 }
end
