FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    encrypted_password { "MyString" }
    reset_password_token { "MyString" }
  end
end
