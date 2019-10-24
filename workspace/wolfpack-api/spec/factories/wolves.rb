# == Schema Information
#
# Table name: wolves
#
#  age         :integer
#  alpha       :boolean
#  avatar      :string
#  created_at  :datetime         not null
#  description :string
#  id          :bigint           not null, primary key
#  name        :string
#  tags        :jsonb
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :wolf do
    name { Faker::Creature::Dog.name }
    age { Faker::Number.number(2) }
    alpha { Faker::Boolean.boolean }
    description { Faker::Quote.yoda }
    avatar { Faker::Avatar.image }
    tags { [Faker::Verb.ing_form, Faker::Verb.ing_form, Faker::Verb.ing_form] }
  end
end
