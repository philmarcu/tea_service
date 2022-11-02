class TeaSerializer
  include JSONAPI::Serializer
  set_id :id
  set_type :teas
  attributes :title, :temperature, :brew_time, :description
end
