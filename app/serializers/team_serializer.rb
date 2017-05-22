class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :company, :user, :team_goals

  # has_one :company
  # has_one :user
  
  # has_many :team_goals
  # has_many :team_users
end
