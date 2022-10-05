class CreateVectorData < ActiveRecord::Migration[6.1]
  def change
    create_table :vector_data do |t|
      t.belongs_to :research, null: false, foreign_key: true
      t.references :data, polymorphic: true, null: false

      t.timestamps
    end
  end
end
