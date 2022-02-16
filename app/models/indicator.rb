class Indicator < ApplicationRecord
  belongs_to :collection, optional: true

  validates :name, presence: true
end
