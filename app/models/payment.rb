class Payment < ApplicationRecord
  has_many :flights, dependent: :destroy

  COST_FORMAT = /\A([0-9]+|[0-9]+\.[0-9]{1,2})\z/
  validates :flight_cost, presence: true, format: {with: COST_FORMAT, message: "wrong format"}, numericality: true

  CURRENCY_FORMAT = /\A[A-Z]{3}\z/
  validates :currency, presence: true, format: {with: CURRENCY_FORMAT, message: "wrong format"}
end
