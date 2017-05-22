class Company < ApplicationRecord
  has_one :user
  has_many :company_goals
end
