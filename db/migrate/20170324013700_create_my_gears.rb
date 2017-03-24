class CreateMyGears < ActiveRecord::Migration[5.0]
  def change
    create_table :my_gears do |t|
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
