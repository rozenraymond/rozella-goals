# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  password_digest :text
#  jarsCollection  :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  dashboard_id    :integer
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
