# frozen_string_literal: true

# :nodoc:
class Project < ApplicationRecord
  belongs_to :user

  validates :comment, presence: true
end
