FactoryBot.define do
  # ActsAsTenant.current_tenant = Account.last!
  factory :project do
    id { 1 }
    name { FFaker::Lorem.words.join(" ")  }
    created_at { Time.now }
    updated_at { Time.now }
  end
end
