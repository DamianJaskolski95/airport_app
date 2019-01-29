class Airport < ApplicationRecord
  #has_many :flights, dependent: :destroy
  has_many :airport_sources, :class_name => 'Flight', :foreign_key => "airport_source_id", dependent: :destroy
  has_many :airport_destins, :class_name => 'Flight', :foreign_key => "airport_dest_id", dependent: :destroy

  CITY_FORMAT = /\A([A-Z]{1}[a-z]+[\ ]{0,1}){0,5}\z/
  validates :city, presence: true, format: {with: CITY_FORMAT, message: "wrong format"}

  COUNTRY_FORMAT = /\A([A-Z]{1}[a-z]+[\ ]{0,1}){0,5}\z/
  validates :country, presence: true, format: {with: COUNTRY_FORMAT, message: "wrong format"}
end
