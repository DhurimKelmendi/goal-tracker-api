class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :invitation_code
end
