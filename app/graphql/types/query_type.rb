module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :events, EventType, null: true,
      description: "List Events"
    def events
      Event.all
    end
  end
end
