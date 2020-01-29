# frozen_string_literal: true

class House < ApplicationRecord
  has_many :students

  validates :name, uniqueness: true
  validates :name, :points, presence: true
  validates :points, numericality: { only_integer: true }
end
