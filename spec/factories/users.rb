# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { '123456' }
    password_confirmation { '123456' }

    transient do
      avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/ruby.png')) }
    end

    after(:create) do |user, option|
      user.avatar.attach(option.avatar)
    end
  end
end
