FactoryBot.define do
  factory :training_menu do
    spot { "胸" }
    menu { "ベンチプレス" }
    content { Faker::Lorem.words }
    association :training_record
  end
end
