class Membership < ApplicationRecord
  belongs_to :group
  belongs_to :user
  belongs_to :role
end
