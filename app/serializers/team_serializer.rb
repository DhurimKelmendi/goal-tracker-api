class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :company_id, :user_id
end
