class Group < ApplicationRecord
  has_many :memberships
  has_many :members, through: :memberships, source: :user

  def group_organizers
    self.memberships.where(role_id: Role.find_by_name('Organizer').id).map{|m| m.user.full_name}.join(",")
  end
end
