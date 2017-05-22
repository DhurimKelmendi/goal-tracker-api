class User < ApplicationRecord
  before_create -> { self.auth_token = SecureRandom.hex }
  
  belongs_to :company

  has_many :user_goals
  has_many :user_teams
end
