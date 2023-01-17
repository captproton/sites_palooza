FactoryBot.define do
  factory :post do
    id { 1 }
    title { "MyString" }
    body { "MyText" }
    user_id { 1 }
    created_at { "2023-01-16 15:40:45" }
    updated_at { "2023-01-16 15:40:45" }
  end
end
