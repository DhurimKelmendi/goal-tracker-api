class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :invitation_code
  
  has_one :user
  has_many :company_goals
end
