# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Role.delete_all
Group.delete_all
Membership.delete_all

# 100.times.each do
#   begin
#     user = nil
#     while user.nil? or user.id.nil?
#       user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
#     end
#   rescue
#     puts "rescue user create error---"
#   end  
# end

# puts "==========start creating roles=================="
# Role.create(name: 'Organizer')
# Role.create(name: 'Presenter')
# Role.create(name: 'Participant')
# puts "==========end of creating roles================="

# 20.times.each do
#   begin
#     group = nil
#     while group.nil? or group.id.nil?
#       group = Group.create(name: Faker::Company.name)
#       # group = Group.create(name: Faker::Company.name, user: User.order("RANDOM()").first, role: Role.order("RANDOM()").first)
#     end
#   rescue
#     puts "rescue group create error---"
#   end
# end



# 100.times.each do
#   membership = Membership.create(
#       group: Group.order("RANDOM()").first,
#       user: User.order("RANDOM()").first,
#       role: Role.order("RANDOM()").first
#     )
# end