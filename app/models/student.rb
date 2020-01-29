class Student < ApplicationRecord
  belongs_to :house

  validates :name, uniqueness: true, presence: true
end
