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

class User < ActiveRecord::Base
  has_secure_password
  has_many :goals
  belongs_to :dashboard
end
