FactoryBot.define do
  factory :event do
    object { Faker::Lorem.word }
    state { Faker::Lorem.word }
    data { Faker::Json.shallow_json(3, key: 'App.name', value: 'App.version') }
    created_at { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    updated_at { Faker::Time.between(DateTime.now - 1, DateTime.now) }
  end
end
