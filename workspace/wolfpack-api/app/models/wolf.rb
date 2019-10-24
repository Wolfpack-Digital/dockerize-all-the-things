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

class Wolf < ApplicationRecord
end
