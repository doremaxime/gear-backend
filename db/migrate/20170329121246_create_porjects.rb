class CreatePorjects < ActiveRecord::Migration[5.0]
  def change
    create_table :porjects do |t|
      t.string :comment

      t.timestamps
    end
  end
end
