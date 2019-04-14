class EventLoggerSchema < GraphQL::Schema
  mutation(Types::MutationType)
  # mutation(Types::MutationType) # TODO: Turn on once I have mutations implemented
  query(Types::QueryType)
end
