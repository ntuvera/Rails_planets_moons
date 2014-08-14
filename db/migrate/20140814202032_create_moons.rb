class CreateMoons < ActiveRecord::Migration
  def change
    create_table :moons do |t|
      t.string :name
      t.string :image
      t.float :diameter
      t.float :mass

      t.timestamps
    end
  end
end
