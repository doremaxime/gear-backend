# frozen_string_literal: true

# :nodoc:
class MyGear < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :quantity, presence: true
end
