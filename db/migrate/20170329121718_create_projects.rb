class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :comment, null: false

      t.timestamps null: false
    end
  end
end
