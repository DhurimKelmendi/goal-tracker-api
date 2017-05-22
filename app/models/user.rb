class User < ApplicationRecord
  belongs_to :company

  has_many :user_goals
  has_many :user_teams
end
