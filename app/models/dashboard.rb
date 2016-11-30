# == Schema Information
#
# Table name: dashboards
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Dashboard < ActiveRecord::Base
  has_many :users
  has_many :goals, :through => :users
end
