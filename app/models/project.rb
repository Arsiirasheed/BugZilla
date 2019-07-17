class Project < ApplicationRecord
  has_many :bugs, dependent: :destroy
  belongs_to :creator, class_name: :User
  has_many :enrollments
  has_many :enrolled_user, through: :enrollments, source: :user
end
