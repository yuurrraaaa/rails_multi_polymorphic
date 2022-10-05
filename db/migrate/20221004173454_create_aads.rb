class CreateAads < ActiveRecord::Migration[6.1]
  def change
    create_table :aads do |t|
      t.string :test1
      t.string :test2
      t.string :test3

      t.timestamps
    end
  end
end
