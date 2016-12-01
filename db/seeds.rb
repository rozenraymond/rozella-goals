# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

u1 = User.create( { :name => "Sam", :email => "sam@ga.co", :password => "chicken", :password_confirmation => "chicken" } )
u2 = User.create( { :name => "Fancy", :email => "fancy@ga.co", :password => "chicken", :password_confirmation => "chicken" } )
u3 = User.create( { :name => "Drew", :email => "drew@ga.co", :password => "chicken", :password_confirmation => "chicken" } )

puts "User count : #{User.all.count}"

Goal.destroy_all

g1 = Goal.create :name => "Lose Weight"
g2 = Goal.create :name => "Learn Ruby"
g3 = Goal.create :name => "Project Idea"

u1.goals << g2 << g3
u2.goals << g1 << g2
u3.goals << g2 << g3


Step.destroy_all
s1 = Step.create :name => "Do cardio"
s2 = Step.create :name => "Do HIIT"
s3 = Step.create :name => "Weight Lifting"
s4 = Step.create :name => "Find and Collect Resources"
s5 = Step.create :name => "Find a good tutorial online"
s6 = Step.create :name => "Find a good mentor"
s7 = Step.create :name => "Find Inspiration"


g1.steps << s1 << s2 << s3
g2.steps << s5 << s6
g3.steps << s7


# Following relationships
users = User.all
user = users.first
following = users[1...2]
followers = users[1...2]
following.each{ |followed| user.follow(followed) }
followers.each{ |follower| follower.follow(user) }
