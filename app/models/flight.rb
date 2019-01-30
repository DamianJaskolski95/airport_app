class Flight < ApplicationRecord
  belongs_to :airplane
  belongs_to :payment

  belongs_to :airport_source, :class_name => 'Airport'
  belongs_to :airport_dest, :class_name => 'Airport'
  has_many :airports

  has_many :reservations, dependent: :destroy

  validates :fl_date, presence: true

end
