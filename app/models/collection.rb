class Collection < ApplicationRecord
  belongs_to :user
  has_many :indicators, dependent: :destroy

  validates :name, :asso, presence: true, uniqueness: true
  accepts_nested_attributes_for :indicators, allow_destroy: true
end
