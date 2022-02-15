class Collection < ApplicationRecord
  belongs_to :user
  has_many :indicators, dependent: :destroy

  validates :name, :asso, presence: true, uniqueness: true
end
