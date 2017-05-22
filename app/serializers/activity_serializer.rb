class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :body, :progress, :goal, :user

  # has_one :goal
  # has_one :user
end
