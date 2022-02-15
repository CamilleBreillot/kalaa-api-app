class Indicator < ApplicationRecord
  belongs_to :collection

  validates :name, :value, presence: true
end
