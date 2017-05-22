class GoalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :goal, :goal_progress, :goal_date, :slug
  
  # has_many :activities
end
