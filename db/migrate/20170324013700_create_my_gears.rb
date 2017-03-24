class CreateMyGears < ActiveRecord::Migration[5.0]
  def change
    create_table :my_gears do |t|
      t.string :name, null: false
      t.integer :quantity, null: false

      t.timestamps null: false
    end
  end
end
