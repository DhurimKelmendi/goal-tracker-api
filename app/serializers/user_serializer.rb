class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :role, :company
  
# def company
#   CompanySerializer.new(object.company, { root: false })
# end
#   has_many :user_goals
#   has_many :user_teams
end
