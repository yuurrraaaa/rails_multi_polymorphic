class CreateAadData < ActiveRecord::Migration[6.1]
  def change
    create_table :aad_data do |t|
      t.string :test1
      t.string :test2
      t.string :test3
      t.string :teast4

      t.timestamps
    end
  end
end
