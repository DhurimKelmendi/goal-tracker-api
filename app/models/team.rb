class Team < ApplicationRecord
  belongs_to :company
  belongs_to :user
  
  has_many :team_goals
  has_many :team_users
end
