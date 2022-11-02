class CustomerSerializer
  include JSONAPI::Serializer
  set_id :id
  set_type :customers
  attributes :first_name, :last_name, :email, :address
end
