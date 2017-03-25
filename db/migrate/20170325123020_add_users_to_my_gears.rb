# frozen_string_literal: true
class AddUsersToMyGears < ActiveRecord::Migration[5.0]
  def change
    add_reference :my_gears, :user, foreign_key: true
  end
end
