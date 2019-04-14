class Types::EventType < Types::BaseObject
  description "Listing events"
  field :id, ID, null: false
  field :object, String, null: true
  field :state, String, null: true
end
