class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :body, :progress, :goal_id, :user_id
end
