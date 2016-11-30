# == Schema Information
#
# Table name: steps
#
#  id         :integer          not null, primary key
#  name       :text
#  notes      :text
#  deadline   :date
#  reminder   :datetime
#  token      :integer
#  goal_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class StepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
