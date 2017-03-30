# frozen_string_literal: true

# :nodoc:
class MyGear < ApplicationRecord
  belongs_to :user
  validates_length_of :name, minimum: 1, maximum: 12, allow_blank: false
  validates_length_of :quantity, minimum: 1, maximum: 4, allow_blank: false
  validates :name, presence: true
  validates :quantity, presence: true
end
