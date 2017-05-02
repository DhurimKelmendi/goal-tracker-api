class CompanyGoal < ApplicationRecord
  belongs_to :goal
  belongs_to :company
end
