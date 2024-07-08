# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  email                        :string           not null
#  in_app_notifications_enabled :boolean          default(TRUE), not null
#  mail_notifications_enabled   :boolean          default(TRUE), not null
#  role                         :string
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
FactoryBot.define do
  factory :user do
    email { "dev@example.com" }

    trait :with_profile do
      profile
    end
  end
end