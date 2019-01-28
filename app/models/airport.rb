class Airport < ApplicationRecord
  has_many :flights, dependent: :destroy

  CITY_FORMAT = /\A([A-Z]{1}[a-z]+[\ ]{0,1}){0,5}\z/
  validates :city, presence: true, format: {with: CITY_FORMAT, message: "wrong format"}

  COUNTRY_FORMAT = /\A([A-Z]{1}[a-z]+[\ ]{0,1}){0,5}\z/
  validates :country, presence: true, format: {with: COUNTRY_FORMAT, message: "wrong format"}
end
