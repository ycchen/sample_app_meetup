require 'csv'
class User < ApplicationRecord
  has_many :memberships
  has_many :groups, through: :memberships
  has_many :roles,  through: :groups
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.import(file)
    
    CSV.foreach(file.path, headers: false) do |row|
      logger.debug "==============================================="
      logger.debug "== #{row}"
      
      group_name = row[0].strip
      first_name = row[1].split(" ").first
      last_name = row[1].split( " ").last
      role_name = row[2].strip

      logger.debug " role_name : #{role_name}"
      logger.debug " last_name : #{last_name}"
      logger.debug " first_name : #{first_name}"
      logger.debug " group_name : #{group_name}"

      user = User.create!(first_name: first_name, last_name: last_name)
      role = Role.find_or_create_by(name: role_name)
      group = Group.find_or_create_by(name: group_name)
      
      logger.debug "====================before membership==========================="
      membership = Membership.create!(group: group, user: user, role: role)
      logger.debug "====================after membership==========================="

    end

  end
end
