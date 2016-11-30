# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  name       :text
#  deadline   :datetime
#  categories :text
#  reward     :text
#  jar        :integer
#  image      :text
#  user_id    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :steps
end
