class User < ApplicationRecord
  has_many :reservations, dependent: :destroy

  NAME_FORMAT = /\A[A-Z]{1}[a-z]{2,40}\z/
  validates :name, presence: true, format: { with: NAME_FORMAT, message: "only allows letters" }
  validates :surname, presence: true, format: { with: NAME_FORMAT, message: "only allows letters" }

  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: EMAIL_FORMAT, message: "wrong format" }, uniqueness: true

  before_save { self.email = email.downcase }

  has_secure_password

  PESEL_FORMAT = /\A[0-9]{11}\z/
  validates :pesel, presence: true, format: { with: PESEL_FORMAT, message: "wrong format"}, uniqueness: true

  ID_NUMBER_FORMAT = /\A([A-Z]|[0-9]){9}\z/
  validates :id_number, presence: true, format: { with: ID_NUMBER_FORMAT, message: "wrong format"}, uniqueness: true


end
