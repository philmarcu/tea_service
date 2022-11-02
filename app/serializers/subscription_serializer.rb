class SubscriptionSerializer
  include JSONAPI::Serializer
  set_id :id
  set_type :subscriptions
  attributes :title, :price, :status, :frequency
  belongs_to :tea
  belongs_to :customer
end
