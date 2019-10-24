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

class WolfSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :alpha, :description, :avatar, :tags
end
