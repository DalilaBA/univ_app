class Course < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum: 50}
  validates :short_name, presence: true, length: {minimum: 3, maximum: 15}
  validates :description, presence: true, length: {minimum: 5, maximum: 50}

  has_many :user_courses
  has_many :users, through: :user_courses
end
