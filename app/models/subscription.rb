class Subscription < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true
  validates :status, presence: true
  validates :frequency, presence: true
  belongs_to :customer
  belongs_to :tea

  enum status: {
    pending: 0,
    active: 1,
    cancelled: 2
  }

  enum frequency: {
    monthly: 10,
    quarterly: 20,
    yearly: 30
  }
end
