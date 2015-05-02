class Exercise < ActiveRecord::Base
  validates :name, uniqueness: { case_sensetive: false }
end
