class Workout < ActiveRecord::Base
  validates :date, presence: true
  
  belongs_to :user
  has_many :exercise_records, dependent: :destroy
  accepts_nested_attributes_for :exercise_records, :reject_if => :all_blank, :allow_destroy => true
end
