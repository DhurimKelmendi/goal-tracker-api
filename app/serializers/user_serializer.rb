class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :role, :company_id
end
