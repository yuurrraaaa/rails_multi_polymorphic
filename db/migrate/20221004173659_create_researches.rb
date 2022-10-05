class CreateResearches < ActiveRecord::Migration[6.1]
  def change
    create_table :researches do |t|
      t.references :procedure, polymorphic: true, null: false
      t.datetime :start_time
      t.datetime :end_time
      t.string :doctor

      t.timestamps
    end
  end
end
