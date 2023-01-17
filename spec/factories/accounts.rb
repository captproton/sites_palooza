FactoryBot.define do
  factory :account do
    name { FFaker::Lorem.words.join(" ") }
    subdomain { FFaker::Lorem.words.first }
    domain { "#{FFaker::Lorem.words.first}.dev" }
  end
end
