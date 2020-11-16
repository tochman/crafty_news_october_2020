# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'user@domain.com' }
    password { 'password' }
  end
end
