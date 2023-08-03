class CreateWoodprojects < ActiveRecord::Migration[7.0]
  def change
    create_table :woodprojects do |t|
      t.string :proj
      t.string :wood
      t.string :finish
      t.string :img

      t.timestamps
    end
  end
end
