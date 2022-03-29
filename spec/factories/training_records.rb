FactoryBot.define do
  factory :training_record do
    date { Faker::Date.in_date_period }
    data { Faker::Json.shallow_json(width: 3, options: { key: 'Name.first_name', value: 'Name.last_name' }) }
    association :user
  end
end
