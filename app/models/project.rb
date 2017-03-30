# frozen_string_literal: true

# :nodoc:
class Project < ApplicationRecord
  belongs_to :user
  validates_length_of :comment, minimum: 1, maximum: 11, allow_blank: false
  validates :comment, presence: true
end
