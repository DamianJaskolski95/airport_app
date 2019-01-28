class Airplane < ApplicationRecord
  has_many :flights, dependent: :destroy

  MODEL_FORMAT = /\A([\w]+[\-]*){4,40}\z/
  validates :model, presence: true, format: {with: MODEL_FORMAT, message: "wrong format"}, uniqueness: true

  AIRLANES_FORMAT = /\A([\w]+[\-]*[\ ]*){4,40}\z/
  validates :airlines, presence: true, format: {with: AIRLANES_FORMAT, message: "wrong format"}

  CAP_FORMAT = /\A[0-9]{1,4}/
  validates :capacity, presence: true, format: {with: CAP_FORMAT, message: "wrong format"}, numericality: true

end
