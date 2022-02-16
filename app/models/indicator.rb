class Indicator < ApplicationRecord
  belongs_to :collection

  validates :name, presence: true
end
