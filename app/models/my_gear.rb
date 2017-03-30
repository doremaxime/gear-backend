# frozen_string_literal: true

# :nodoc:
class MyGear < ApplicationRecord
  belongs_to :user
  validates_length_of :name, minimum: 1, maximum: 10, allow_blank: false
  validates_length_of :quantity, minimum: 1, maximum: 14, allow_blank: false
  validates :name, presence: true
  validates :quantity, presence: true
end
